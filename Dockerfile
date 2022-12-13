# syntax=docker/dockerfile:1
# starts with pulling Py3 parent image
FROM python:3

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1



# new working directory where layers will be saved 
WORKDIR /code

# installs further software in the parent image
COPY requirements.txt /code/

# runs install for required softare in requirement.txt file
RUN pip install -r requirements.txt

# copies code to the image directory 
COPY . /code/