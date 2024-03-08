FROM python:3.10-alpine

RUN mkdir -p /app
COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt

ENTRYPOINT [ "python" ]
CMD ["hello-world.py" ]