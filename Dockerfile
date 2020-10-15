FROM python:stretch

COPY . /main
COPY . /requirements.txt /app/
COPY . /.env_file
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install flask
RUN pip install -r 'requirements.txt'



ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]