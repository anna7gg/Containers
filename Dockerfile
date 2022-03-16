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
#RUN apt-get install -y default-jre
#User user
#RUN cd ~ && echo "expotr JAVA_HOME=/usr/lib/jvm/default-java/jre/" >> /home/user/.bashrc
#ENV JAVA_BIN /usr/lib/jvm/default-java/jre/bin 
#RUN echo "OOOPS" >var/www/html/index.html
#ENTRYPOINT apachectl "-DFOREGROUND"
#EXPOSE 8080
