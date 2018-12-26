FROM python:3
RUN mkdir /code
WORKDIR /code
COPY Pipfile Pipfile.lock ./
RUN pip install -U pipenv
RUN pipenv install --system
ADD . /code/
EXPOSE 5000
RUN python manage.py migrate
CMD python manage.py runserver 0.0.0.0:8000


