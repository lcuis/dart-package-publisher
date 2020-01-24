FROM google/dart:latest

# Installing Flutter
RUN git clone -b stable --depth 1 https://github.com/flutter/flutter.git /flutter

ENV PATH $PATH:/flutter/bin

RUN flutter doctor

COPY . /

ENTRYPOINT ["/entrypoint.sh"]
