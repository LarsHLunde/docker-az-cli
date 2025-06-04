FROM debian:12-slim
RUN apt-get update
RUN apt-get install -y curl apt-transport-https ca-certificates curl gnupg lsb-release
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash
RUN echo "sleep infinity" > /init.sh
ENTRYPOINT ["/bin/bash", "/init.sh"]
