FROM python:3.6-alpine
RUN mkdir -p /project/flask
WORKDIR /project/flask
ENV FLASK_APP=hostname.py
ENV FLASK_RUN_HOST=0.0.0.0
RUN pip3 install flask
EXPOSE 5000
#COPY . .
COPY hostname.py hostname.py
CMD ["flask", "run" ]
#CMD ["flask", "run", "--host", "0.0.0.0"]
