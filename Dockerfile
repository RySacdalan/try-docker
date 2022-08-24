FROM python:3.10.5

WORKDIR /fastapi-app

COPY dependency.txt .

RUN pip install -r dependency.txt

COPY ./app ./app

CMD [ "python", "./app/main.py" ]