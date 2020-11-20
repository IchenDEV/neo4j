FROM python:3.7.9-stretch
RUN apt-get -y update
RUN mkdir -p /app
WORKDIR /app
COPY requirements.txt /app/
RUN pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple

COPY . /app
CMD [ "python", "app.py" ]