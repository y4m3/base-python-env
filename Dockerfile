FROM python:3.9.4-buster

ENV PYTHONUNBUFFERED=1

WORKDIR /workspace

COPY poetry.lock pyproject.toml ./

RUN apt-get update \
    && apt-get -y install git

RUN pip install poetry
RUN poetry config virtualenvs.create false
