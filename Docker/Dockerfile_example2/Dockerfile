FROM Ubuntu:22.04
RUN apt install mongo
RUN to change something using linux commands 
WORKDIR /usr/local/apache2
COPY /home/charan/code.zip /tmp/code.zip
ADD /home/charan/code.zip /tmp/code/
ADD https://dlcdn.apache.org/maven/maven-3/3.9.10/binaries/apache-maven-3.9.10-bin.zip /tmp/maven
EXPOSE 27017
ENV MONGO_INITDB_ROOT_USERNAME=admin
ENV MONGO_INITDB_ROOT_PASSWORD=admin123456
ENV PWD=/
ENTRYPOINT ["/bin/bash"]
CMD [ "-c" "echo Hello" ]