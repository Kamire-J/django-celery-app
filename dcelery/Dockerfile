# Python image as base
FROM python:3.11.4-alpine


WORKDIR /usr/src/app 

# prevent python from writing .pyc files
ENV PYTHONDONTWRITEBYTECODE 1

# python output is sent to terminal without buffering
ENV PYTHONUNBUFFERED 1

# copy requirements.txt file 
COPY ./requirements.txt /usr/src/app/requirements.txt

RUN pip install --upgrade pip && pip install -r requirements.txt


COPY  ./entrypoint.sh /usr/src/app/entrypoint.sh 

# copy rest of the application into the container 
COPY . /usr/src/app/

ENTRYPOINT ["/usr/src/app/entrypoint.sh"]