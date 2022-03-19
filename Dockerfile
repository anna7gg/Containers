From alpine:3.9
MAINTAINER annag <anna7gg@gmail,com>
WORKDIR /app
COPY ./requirements.txt ./
RUN apk update
RUN apk add python3
RUN apk add py3-pip
RUN pip3 install  -r requirements.txt
COPY ./app.py ./
ENTRYPOINT [ "python3" ] 
CMD ["app.py"]

