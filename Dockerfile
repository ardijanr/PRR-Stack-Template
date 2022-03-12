FROM fedora:35

# OS setup & dependencies
RUN dnf -y update


# NPM INSTALLATION
RUN dnf -y module install nodejs:16/common
RUN dnf -y install nodejs
RUN npm install -g npm@latest


# RUST installtion
RUN dnf -y install postgresql postgresql-server
RUN dnf -y install oidentd
RUN dnf -y install libpq-devel
RUN dnf -y install rust cargo


COPY /website /website/

# NPM build frontend
WORKDIR /website/frontend
RUN npm install
RUN npm run build


# Start web server
WORKDIR /website/backend/
RUN cargo build

ENTRYPOINT ["cargo","run"]
