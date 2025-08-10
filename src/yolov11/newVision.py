from ultralytics import YOLO as yolo
import cv2 as cv

class visionLogic:
    def __init__(self, model, video_path):
        self.model = yolo(model)
        self.video = cv.VideoCapture(video_path)

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

    def process_frame(self, results, frame):

        gc,rc,nc,ec,sc,wc = None, None, None, None, None, None
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
                elif cls == r_cls:
                    rc = data['center']
        if gc and rc:
            cv.line(frame, gc, rc, (255, 255, 0), 2)

    def run(self):
        ret, frame = self.video.read()
        results = self.model.track(frame, stream=True)
        self.process_frame(results, frame)
        cv.imshow('frame', frame)

if __name__ == "__main__":
    model = yolo("D:/A. TEAM NODE/runs/detect/train2/weights/best.pt")
    video_path = "D:/A. TEAM NODE/amore_vision/data/video2.mp4"
    vision = visionLogic(model, video_path)
    while True:
        vision.run()
        if cv.waitKey(1) & 0xFF == ord('q'):
            break
    vision.video.release()
    cv.destroyAllWindows()