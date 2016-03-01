## Version: 0.3
FROM alpine
MAINTAINER Anton Bugreev <anton@bugreev.ru>

## Install packages
RUN apk update && apk upgrade && apk add \
    ruby \
    ruby-dev \
    ruby-rdoc \
    ruby-irb \
    ruby-io-console \
    git \
    libffi-dev \
    gcc \
    libc-dev \
    zlib-dev \
    libxml2-dev \
    libxslt-dev \
    make

## Install scanner
RUN git clone https://github.com/rastating/joomlavs.git
WORKDIR /joomlavs/
RUN gem install bundler && \
    bundle config build.nokogiri --use-system-libraries && \
    bundle install

## Run scanner
ENTRYPOINT ["ruby", "joomlavs.rb"]

