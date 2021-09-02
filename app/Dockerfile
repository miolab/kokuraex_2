FROM elixir:1.12.2-slim

WORKDIR /usr/src/app

RUN apt-get update -y && \
  apt-get upgrade -y && \
  apt-get install -y \
  build-essential \
  curl \
  git \
  gzip \
  inotify-tools \
  ssh \
  sudo \
  tar

RUN apt-get install -y nodejs npm
RUN npm install -g n
RUN n 14.17.6
RUN apt-get purge -y nodejs npm

RUN apt-get clean

RUN mix local.hex --force && \
  mix local.rebar --force

# COPY ./mix.exs /app/
# COPY ./mix.lock /app/

RUN mix archive.install hex phx_new 1.5.12 --force
# RUN mix deps.compile

# RUN mix phx.digest

# CMD [ "mix", "phx.server", "--no-halt" ]
