FROM golang

RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive \
    apt-get install -y \
      locales \
      nano \
      pass \
      vim \
  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/

RUN \
  go get -v gopkg.in/Netflix-Skunkworks/go-jira.v1/cmd/jira

ENTRYPOINT [ "jira" ]
