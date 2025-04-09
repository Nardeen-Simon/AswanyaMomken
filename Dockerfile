#first statge for building an image for the fastapi
#FROM python:3.9.4-alpine
# requirements.txt
FROM python:3.9.4-slim
WORKDIR /app
COPY requirements.txt .

RUN pip install --upgrade pip
RUN pip install --upgrade setuptools
RUN pip install psycopg2-binary

RUN pip install --default-timeout=1000 orjson==3.7.7
RUN pip install --default-timeout=1000 passlib==1.7.4
RUN pip install "cython<3.0.0" && pip install --no-build-isolation pyyaml==6.0
RUN pip install --default-timeout=1000 zipp==3.8.1
RUN pip install --default-timeout=1000 wrapt==1.14.1

RUN pip install -r requirements.txt
COPY . .