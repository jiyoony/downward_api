# Dockerfile
FROM python:3.9-slim

# curl 설치
RUN apt-get update && apt-get install -y curl

# 작업 디렉토리 설정
WORKDIR /app

# 종속성 설치
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 앱 복사 및 실행
COPY app.py .

CMD ["python", "app.py"]
