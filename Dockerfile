FROM python:3.8.12-alpine3.15
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /app
COPY requirements.txt /app/
RUN pip3 install -r requirements.txt
RUN apk update && apk add postgresql-dev gcc python3-dev musl-dev
RUN pip install psycopg2
COPY . /app/
EXPOSE 8000
CMD ["python3", "manage.py", "runserver","0.0.0.0:8000"]