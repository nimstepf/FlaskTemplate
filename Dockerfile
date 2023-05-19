FROM ubuntu:latest
RUN apt update && \
        apt install -y git python3 python3-pip python3-dev

COPY . /

RUN pip install --upgrade pip && \
        pip install -r requirements.txt

CMD ["python3", "run.py"]