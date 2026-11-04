# FROM python:3.8-alpine
# COPY . /app
# WORKDIR /app
# RUN pip install -r requirements.txt
# CMD python app.py

FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "app.py"]
