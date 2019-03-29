FROM python:3.7-slim

WORKDIR /app

ADD build.tar.gz /app

RUN pip install -U pip && pip install -r requirements.txt

EXPOSE 80

CMD ["python", "app.py"]