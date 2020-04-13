# docker build -t mjheitland/printheadlines:python .
# docker run mjheitland/printheadlines:python
FROM python:3
WORKDIR /src
RUN pip install --no-cache-dir feedparser
COPY printheadlines.py /src/
USER www-data
CMD [ "python", "/src/printheadlines.py" ]