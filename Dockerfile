FROM python:3
ENV TINI_VERSION v0.18.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
RUN chmod +x /tini
RUN mkdir /code
WORKDIR /code
COPY Pipfile Pipfile.lock ./
RUN pip install -U pipenv
RUN pipenv install --system
ADD . /code/
EXPOSE 8000
RUN python manage.py migrate
ENTRYPOINT ["/tini", "--"]
CMD ["gunicorn", "helloworld_project.wsgi:application", "--bind", "0.0.0.0:8000"]
