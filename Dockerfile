# set python-slim as a base image
FROM python:3.12-slim

# change the working direcotry inside the container
WORKDIR /webserver

# copy the files is the host cimputer into /webserver
COPY . .

# install the requiremnets form the txt file. in this csae -  install flask
RUN pip install --no-cache-dir -r requirements.txt

# make the contatiner available to the outside world on port 80
EXPOSE 80

# tells flask what file to run when strating the application
ENV FLASK_APP=app.py

# set the command to run the flask server at port 80
CMD ["flask", "run", "--host=0.0.0.0", "--port=80"]
