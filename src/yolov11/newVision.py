from ultralytics import YOLO as yolo
import cv2 as cv
import pyzed.sl as sl
import numpy as np

class visionLogic:
    def __init__(self, model, video_path):
        self.model = yolo(model)
        self.video = cv.VideoCapture(video_path)

        # parameters


        # important data
        self.midpoint = None

    def getColors(self, cls_num):
        base_colors = [(0, 255, 0), (0, 0, 255), (255, 0, 0)]
        color_index = cls_num % len(base_colors)
        increments = [(1,-2,1),(-2,1,-1),(1,-1,2)]
        color = [base_colors[color_index][i] + increments[color_index][i] * (cls_num // len(base_colors)) % 256 for i in range(3)]
        return tuple(color)

    def drawRectangle(self,x1,y1,x2,y2,frame,color,class_name,box):
        cv.rectangle(frame, (x1,y1),(x2,y2),color,2)
        cv.putText(frame,
                   f'{class_name}{box.conf[0]:.2f}',
                   (x1,y1), cv.FONT_HERSHEY_SIMPLEX,
                   1,
                   color,
                   2)

    def process_frame(self, results, frame, pt_cloud):

        gc,rc,nc,ec,sc,wc = None, None, None, None, None, None
        gc_pt, rc_pt, nc_pt, ec_pt, sc_pt, wc_pt = None, None, None, None, None, None
        g_cls,r_cls,n_cls,e_cls,s_cls,w_cls = 0,1,2,3,4,5

        for result in results:
            classes_names = result.names
            biggest_per_class = {}
            for box in result.boxes:
                if box.conf[0] > 0.4:
                    [xc,yc,w,h] = box.xywh[0]
                    xc, yc, w, h = int(xc), int(yc), int(w), int(h)
                    x1,y1 = xc - w // 2, yc - h // 2
                    x2, y2 = x1 + w, y1 + h
                    area = w*h
                    cls = int(box.cls[0])
                    if (cls not in biggest_per_class) or (area > biggest_per_class[cls]['area']):
                        biggest_per_class[cls] = {
                            'box': box,
                            'x1': x1,
                            'x2': x2,
                            'y1': y1,
                            'y2': y2,
                            'w': w,
                            'h': h,
                            'area': area,
                            'center': (xc, yc)
                        }
            for cls, data in biggest_per_class.items():
                box = data['box']
                x1,y1,x2,y2,w,h=data['x1'],data['y1'],data['x2'],data['y2'],data['w'],data['h']
                class_name=classes_names[cls]
                color = self.getColors(cls)
                self.drawRectangle(x1,y1,x2,y2,frame,color,class_name,box)
                if cls == g_cls:
                    gc = data['center']
                    gc_pt = pt_cloud.get_value(gc[0], gc[1])
                elif cls == r_cls:
                    rc = data['center']
                    rc_pt = pt_cloud.get_value(rc[0], rc[1])
        if gc and rc:
            cv.line(frame, gc, rc, (255, 255, 0), 2)
            self.midpoint = ((gc[0]+rc[0])//2, (gc[1]+rc[1])//2) # in case we need the specific coordinates of the midpoint
            '''midpoint_distance = np.linalg.norm(abs(np.array(gc_pt) - np.array(rc_pt)))
            print(f"Distance between green and red center: {midpoint_distance:.2f} meters")'''
            cv.circle(frame, self.midpoint, 5, (255, 255, 0), -1)
        if gc and gc_pt and gc_pt[0] == sl.ERROR_CODE.SUCCESS:
            gc_dist = gc_pt[1][2]
            cv.putText(frame, f'{gc_dist:.2f} m', (gc[0], gc[1]-10), cv.FONT_HERSHEY_SIMPLEX, 0.7, (0,255,0),2)
        if rc and rc_pt and rc_pt[0] == sl.ERROR_CODE.SUCCESS:
            rc_dist = rc_pt[1][2]
            cv.putText(frame, f'{rc_dist:.2f} m', (rc[0], rc[1]-10), cv.FONT_HERSHEY_SIMPLEX, 0.7, (0,0,255),2)

        xyz_midpoint = [self.midpoint[0], self.midpoint[1], abs((gc_pt[1][2] + rc_pt[1][2]) // 2) if gc_pt and rc_pt else 0]

    def run(self):
        '''ret, frame = self.video.read()
        results = self.model.track(frame, stream=True)
        self.process_frame(results, frame)
        cv.imshow('frame', frame)'''
        zed = sl.Camera()

        # parameters
        init_params=sl.InitParameters()
        init_params.camera_resolution = sl.RESOLUTION.HD1080
        init_params.coordinate_units = sl.UNIT.METER
        init_params.depth_mode = sl.DEPTH_MODE.PERFORMANCE

        err = zed.open(init_params)
        if err != sl.ERROR_CODE.SUCCESS:
            print(f"Camera Open Error: {err}")
            return
        
        img_zed = sl.Mat()
        pt_cloud = sl.Mat()

        while True:
            if zed.grab() == sl.ERROR_CODE.SUCCESS:
                zed.retrieve_image(img_zed, sl.VIEW.LEFT)
                zed.retrieve_measure(pt_cloud, sl.MEASURE.XYZ)
                frame = img_zed.get_data()
                # Python
                if frame.shape[2] == 4:
                    frame = cv.cvtColor(frame, cv.COLOR_BGRA2BGR)
                results = self.model.track(frame, stream=True)
                self.process_frame(results, frame, pt_cloud)
                cv.imshow('ZED Frame', frame)
            if cv.waitKey(1) & 0xFF == ord('q'):
                break

        obj_param = sl.ObjectDetectionParameters()
        obj_param.enable_tracking = True
        obj_param.enable_segmentation = True
        obj_param.detection_model = sl.OBJECT_DETECTION_MODEL.MULTI_CLASS_BOX_ACCURATE



if __name__ == "__main__":
    model = yolo("D:/A. TEAM NODE/runs/detect/train2/weights/best.pt")
    video_path = "D:/A. TEAM NODE/amore_vision/data/video2.mp4"
    vision = visionLogic(model, video_path)

    vision.run()
    vision.video.release()
    cv.destroyAllWindows()