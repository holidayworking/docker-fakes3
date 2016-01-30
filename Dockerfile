FROM ruby:2.3.0

MAINTAINER Hidekazu Tanaka <hidekazu.tanaka@gmail.com>

ENV FAKES3_VERSION 0.2.3

RUN gem install fakes3 --version "$FAKES3_VERSION"

RUN mkdir /mnt/fakes3_root
VOLUME /mnt/fakes3_root

EXPOSE 4567

ENTRYPOINT ["fakes3"]
CMD ["-r",  "/mnt/fakes3_root", "-p",  "4567"]
