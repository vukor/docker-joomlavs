## Version: 0.4
MAINTAINER Anton Bugreev <anton@bugreev.ru>

FROM ruby:2

RUN git clone https://github.com/rastating/joomlavs.git
WORKDIR /joomlavs
RUN gem install bundler && bundle install

ENTRYPOINT ["ruby", "joomlavs.rb"]

