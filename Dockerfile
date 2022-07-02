FROM python:alpine3.10
WORKDIR /app 
COPY . /app
RUN pip install --upgrade pip
RUN pip install flask
RUN pip3 install flask
RUN pip install requests
RUN pip install -r requirements.txt
RUN apk --no-cache add curl
RUN curl --version
RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz
EXPOSE 5000
CMD python form.py
#COPY requirements.txt /app/requirements.txt
#ENTRYPOINT ["python", "form.py"]
