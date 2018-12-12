FROM ruby:2.5.1

ENV APP_HOME /app

RUN mkdir -p $APP_HOME

COPY ./* $APP_HOME
ADD . $APP_HOME

CMD "ruby run -e httpd --port 8000"
