FROM golang

RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive \
    apt-get install -y \
      nano \
      pass \
      vim \
  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/

RUN go get -v github.com/Netflix-Skunkworks/go-jira

ENTRYPOINT [ "go-jira" ]
