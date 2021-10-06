FROM python:3

EXPOSE 5000

ENV COMMIT_SHA=${GITHUB_SHA}
CMD ["echo $COMMIT_SHA"]

# Copying requirements.txt
COPY ./requirements.txt /app/requirements.txt

WORKDIR /app
RUN pip install -r requirements.txt
COPY . /app


CMD ["flask", "run", "-h", "0.0.0.0", "-p", "5000"]
