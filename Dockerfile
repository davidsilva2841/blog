FROM ruby:2.6.6-buster

RUN apt-get update
RUN apt-get install -y nodejs

COPY . /blog
WORKDIR /blog

RUN gem install bundler:1.17.3
RUN bundle _1.17.3_ install

EXPOSE 3000
# Needs to be mapped to 26168
EXPOSE 26166
EXPOSE 1234

#CMD rails server
#CMD bundle exec rdebug-ide --debug --host 0.0.0.0 --port 1234 -- rails server -p 3000 -b 0.0.0.0

