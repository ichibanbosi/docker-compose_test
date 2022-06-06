FROM ubuntu:18.04
COPY requirements.txt /tmp/
COPY app.py /opt/
RUN apt-get update && \
DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip
WORKDIR /tmp/
RUN pip install -qr requirements.txt
EXPOSE 5000
CMD python /opt/app.py
