FROM ruby:2.6.8

RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    yarn

RUN mkdir /rails-dev
WORKDIR /rails-dev
COPY Gemfile Gemfile.lock /rails-dev/

RUN bundle install
COPY . /rails-dev

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3002

# Start the main process.
CMD ["rails", "s", "-p", "3002", "-b", "0.0.0.0"]
