from ultralytics import YOLO
import cv2 as cv

video_path = "D:/A. TEAM NODE/amore_vision/data/video3.mp4"

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

        for box in result.boxes:
            if box.conf[0] > 0.4:
                [x1, y1, x2, y2] = box.xyxy[0]
                x1,y1,x2,y2 = int(x1),int(y1),int(x2),int(y2)
                cls = int(box.cls[0])
                class_name = classes_names[cls]
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