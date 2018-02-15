FROM litaio/ruby:2.3.0
LABEL mantainer "Ramiro Berrelleza <rberrelleza@gmail.com>"
VOLUME /app
RUN gem install bundler && apt-get update && apt-get -y install git
WORKDIR /app

ADD Gemfile .
RUN bundle install --path /var/bundle --without development test --jobs $(nproc) --clean
ADD start .
CMD ["./start"]


