
FROM python:2.7-slim

WORKDIR /app

COPY . /app 

RUN pip install --no-cache --upgrade pip && \
    pip install --no-cache -r requirements.txt

EXPOSE 5000

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]
