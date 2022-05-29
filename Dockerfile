FROM debian:11

# Install Headless JRE after updating installed packages.
RUN apt-get update && apt-get install -y unzip default-jdk curl wget procps
RUN apt-get clean

RUN curl -s https://api.github.com/repos/OpenRefine/OpenRefine/releases/latest \
    | grep "browser_download_url.*linux*" \
    | cut -d '"' -f 4 \
    | wget -qi - && \
    tar -xvf openrefine-linux-*.tar.gz && rm openrefine-linux-*.tar.gz && \
    mv openrefine* openrefine

COPY run.sh /run.sh
ENTRYPOINT ["/run.sh"]