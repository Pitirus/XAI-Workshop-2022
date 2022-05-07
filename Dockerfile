FROM python:3.9-slim
ENV PYTHONUNBUFFERED 1
ADD requirements.txt .
RUN pip install -r requirements.txt

ADD overrides.json .
COPY overrides.json /usr/local/share/jupyter/lab/settings/overrides.json
RUN sed -i 's/<title>JupyterLab<\/title>/<title>XAI Workshop<\/title>/g' /usr/local/share/jupyter/lab/static/index.html

ENV PROJECT_DIR /xai-workshop-2022
WORKDIR $PROJECT_DIR