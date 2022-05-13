FROM python:alpine

ENV DIRECTORY="/"

CMD python3 -m http.server --directory $DIRECTORY