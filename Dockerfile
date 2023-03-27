FROM ruby:3.1.3

ENV LANG C.UTF-8

RUN apt-get update -qq && apt-get install -y \
    nodejs \
    yarn \
    curl \
    build-essential \
    redis-server

WORKDIR /vgm_list_app
COPY Gemfile /vgm_list_app/Gemfile
COPY Gemfile.lock /vgm_list_app/Gemfile.lock
RUN bundle install

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]
