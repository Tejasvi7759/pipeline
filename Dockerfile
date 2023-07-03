FROM python:3.6
COPY . /app
WORKDIR /app
RUN pip install flask
RUN pip freeze > requirements.txt
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]
