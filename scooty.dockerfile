FROM python:latest
RUN apt-get update
RUN apt-get install g++ tk -y
RUN mkdir /app
WORKDIR /app
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt
COPY . /app/
CMD [ "python3" ,"/app/Sooty.py" ]