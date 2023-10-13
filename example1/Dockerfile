FROM python:3-alpine
LABEL name="mvojobs" description="MVOnline utility container for jobs"

ENV PIP_ROOT_USER_ACTION=ignore
ADD	app  /app/

# todo: remove python and mariadb
RUN	apk update && apk upgrade && apk add gcompat mariadb-client && \
	python -m pip install --upgrade pip && \
	python -m pip install -r /app/requirements.txt

WORKDIR	/app
CMD	["/app/start.sh"]