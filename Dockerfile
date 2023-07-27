FROM python:3
RUN apt-get update -qq && apt-get install -y libpq-dev 
ENV PYTHONUNBUFFERED 1
WORKDIR /code
COPY poetry.lock pyproject.toml /code/
RUN pip3 install poetry
RUN poetry install