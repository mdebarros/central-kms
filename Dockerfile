# central-kms image
#
# URL: https://github.com/mojaloop/central-kms
#
# @see https://github.com/mojaloop/central-kms
#
# Version     0.1

FROM mojaloop/sbt:java8sbt0.13.8
LABEL maintainer="Miguel de Barros <miguel.debarros@modusbox.com>"

ENV DB_HOST localhost
ENV DB_PORT 5432
ENV DB_USER	kms
ENV DB_PASSWORD kms

RUN mkdir -p /opt/app
COPY . /opt/app
RUN ls /opt/app -l

WORKDIR /opt/app

RUN sbt update compile

# Override default command.
CMD ["run"]
