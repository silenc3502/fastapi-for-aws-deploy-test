FROM python:3.8

COPY ./app /app
WORKDIR /app

RUN pip install -r uvicorn main:app --reload

EXPOSE 80

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]