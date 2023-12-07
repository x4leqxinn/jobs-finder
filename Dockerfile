FROM python:3.9

ENV PYTHONUNBUFFERED 1

WORKDIR /workspace

COPY requirements.txt .
RUN pip install pip --upgrade \
    && pip install --no-cache-dir -r requirements.txt

COPY . /workspace