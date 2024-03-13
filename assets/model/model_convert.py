from fastapi import FastAPI, UploadFile, File
from pydantic import BaseModel
from io import BytesIO
import torch
from PIL import Image as PILImage

app = FastAPI()

# Load YOLOv5s model
model = torch.hub.load('ultralytics/yolov5', 'yolov5s', pretrained=True)

class Image(BaseModel):
    file: bytes

@app.post('/predict')
async def predict(image: UploadFile = File(...)):
    contents = await image.read()
    
    # Convert image bytes to PIL Image
    img = PILImage.open(BytesIO(contents))
    
    # Make prediction with YOLOv5s model
    results = model(img)
    results=results.pandas().xyxy[0].to_json(orient="records")
    print(results)

    
    # Process results as needed
    # For example, return detected objects
    return results

# @app.get('/predict')
# async def predict():


#     return result


