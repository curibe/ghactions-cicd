FROM python:3.9-slim-buster

WORKDIR /app
COPY ./requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
EXPOSE 5000
ADD . /app
ENV FLASK_APP=mainapp.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=5000
# ENTRYPOINT ["dumb-init", "--", "./entrypoint.sh"]
CMD ["flask", "run"]
