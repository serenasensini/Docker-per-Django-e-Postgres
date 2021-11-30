FROM python:3

ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY ./requirements.txt /app/requirements.txt

RUN pip install -r requirements.txt && pip install --upgrade pip

COPY . .

RUN chmod a+x run.sh

CMD ["./run.sh"]