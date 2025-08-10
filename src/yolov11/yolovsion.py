from ultralytics import YOLO
import cv2 as cv

video_path = "D:/A. TEAM NODE/amore_vision/data/video2.mp4"

model = YOLO("D:/A. TEAM NODE/runs/detect/train2/weights/best.pt")
video = cv.VideoCapture(video_path)

def getColors(cls_num):
    base_colors = [(0, 255, 0), (0, 0, 255), (255, 0, 0)]
    color_index = cls_num % len(base_colors)
    increments = [(1,-2,1),(-2,1,-1),(1,-1,2)]
    color = [base_colors[color_index][i] + increments[color_index][i] * (cls_num // len(base_colors)) % 256 for i in range(3)]
    return tuple(color)

while True:
    ret, frame = video.read()
    if not ret:
        break
    results = model.track(frame, stream=True)
    for result in results:
        classes_names = result.names
        print (classes_names)
        # collect biggest box per class
        biggest_boxes = {}
        for box in result.boxes:
            if box.conf[0] > 0.4:
                [x1, y1, w, h] = box.xywh[0]
                x1,y1,w,h = int(x1),int(y1),int(w),int(h)
                area = w*h
                cls = int(box.cls[0])
                if (cls not in biggest_boxes) or (area > biggest_boxes[cls]['area']):
                    biggest_boxes[cls] = {
                        'box': box,
                        'x1': x1,
                        'y1': y1,
                        'w': w,
                        'h': h,
                        'area': area
                    }
        for cls, data in biggest_boxes.items():
            box = data['box']
            x1, y1, w, h = data['x1'], data['y1'], data['w'], data['h']
            x2, y2 = x1 + w, y1 + h
            class_name = classes_names[cls]
            print(f"Detected (biggest) {class_name} with confidence {box.conf[0]:.2f} at [{x1}, {y1}, {x2}, {y2}]")
            color = getColors(cls)
            cv.rectangle(frame, (x1,y1), (x2,y2), color, 2)
            cv.putText(frame,
                        f'{classes_names[int(box.cls[0])]}{box.conf[0]:.2f}',
                        (x1,y1), cv.FONT_HERSHEY_SIMPLEX, 1, color, 2)
    cv.imshow('frame', frame)
    if cv.waitKey(1) & 0xFF == ord('q'):
        break

video.release()
cv.destroyAllWindows()