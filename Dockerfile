FROM ruby:2.1.5
MAINTAINER ruda
RUN apt-get update -y
WORKDIR /app
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
Run bundle install --jobs 8
Add . /app
EXPOSE 8080
CMD ["rackup", "-o","0.0.0.0","-p","8080"]