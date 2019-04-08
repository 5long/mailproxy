FROM python:3.7-alpine

EXPOSE 25

WORKDIR /app

RUN pip install aiosmtpd==1.2

COPY mailproxy.py ./

CMD ["python", "mailproxy.py"]
