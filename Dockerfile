FROM python:3.9-slim

WORKDIR /app
COPY . /app

RUN apt-get update && \
    apt-get install -y \
    libgl1-mesa-glx \
    libglib2.0-0 \
    libsm6 \
    libxext6 \
    libxrender-dev && \
    pip install --no-cache-dir -r requirements.txt

EXPOSE 8080

ENV NAME World
CMD ["python", "server.py"]