FROM alpine:3.5
RUN apk add --update --no-cache python3
RUN pip3 install Flask
ADD run.sh run.sh
ADD application.py application.py
EXPOSE 5000
ENTRYPOINT /run.sh
