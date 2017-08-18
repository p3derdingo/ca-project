FROM ubuntu:latest
COPY requirements.txt /usr/src/app/

RUN apt-get update -y && apt-get install -y python-pip python-dev build-essestial
RUN pip install --no-cache-dir -r /usr/src/app/requirements.txt
EXPOSE 5000
CMD ["python", "/usr/src/app/run.py"]

