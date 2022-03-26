FROM ruby:3.1.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev

WORKDIR /app

COPY . ./app

RUN chmod +x ./app/scripts/entrypoint.sh

EXPOSE 3000