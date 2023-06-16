FROM fruocco/oai-embeddings
COPY ./code/ /usr/local/src/myscripts
RUN pip install -r requirements.txt
ENV STREAMLIT_SERVER_ENABLE_STATIC_SERVING=true