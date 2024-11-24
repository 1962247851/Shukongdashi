FROM python:3.7.17-buster

WORKDIR /usr/src/app

COPY requirement-new.txt ./
RUN pip install -r 'requirement-new.txt'

RUN rm /usr/local/lib/python3.7/site-packages/tensorflow/contrib/__init__.py
COPY new__init__.py /usr/local/lib/python3.7/site-packages/tensorflow/contrib/__init__.py

COPY . .

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]