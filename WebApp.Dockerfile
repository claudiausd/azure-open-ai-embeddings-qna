FROM python:3.9.10-slim-buster
RUN apt-get update && apt-get install python-tk python3-tk tk-dev -y
FROM fruocco/oai-embeddings
COPY ./code/ /usr/local/src/myscripts
RUN pip install -r requirements.txt
COPY ./code/bootstrap.min.css /usr/local/lib/python3.9/site-packages/streamlit_chat/frontend/build/bootstrap.min.css
ENV STREAMLIT_SERVER_ENABLE_STATIC_SERVING=true