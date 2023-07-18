FROM python:3.9

ARG command="--version"

RUN git config --add --global safe.directory '*'

COPY entrypoint.sh /entrypoint.sh

RUN apt-get update -y

RUN pip install --upgrade pip awsebcli==3.20.3

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
