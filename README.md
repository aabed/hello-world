## Building the project
### locally on the machine

 1. Install pipenv https://github.com/pypa/pipenv#installation
 2. install dependancies `pipenv install`
 3. activate the environment `pipenv shell`
 4. run the migrations `python manage.py migrate`
 5. run the server `python manage.py runserver 0.0.0.0:8000`

### Docker

 1. `docker build -t hello-world .` `docker run -d -p 8000:8000
 2.  `hello-world`

## Running the tests
`python manage.py test`
