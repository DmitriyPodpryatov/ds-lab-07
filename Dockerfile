FROM python:3.8-slim

WORKDIR /var/www/web

COPY . /var/www/web

RUN pip install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 8080

CMD ["python", "app.py"]
