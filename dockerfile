FROM python:3

ENV COMMIT_SHA="${GITHUB_SHA}"
CMD ["echo $COMMIT_SHA"]

# Copying requirements.txt
COPY ./requirements.txt /app/requirements.txt

WORKDIR /app
RUN pip install -r requirements.txt
COPY . /app

CMD [ "python", "./app.py" ]