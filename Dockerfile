FROM python:3.8
WORKDIR /code
EXPOSE 8000
COPY /src /code
COPY requirements.txt /code
RUN pip3 install -r requirements.txt
CMD ["uvicorn", "--host", "0.0.0.0", "--port", "8000", "main:app"]