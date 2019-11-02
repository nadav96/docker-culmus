FROM tianon/latex

RUN apt-get update && apt-get install -y wget texlive-font-utils
WORKDIR /tmp
RUN wget https://github.com/nadav96/docker-culmus/blob/master/culmus.tar.gz?raw=true -O culmus.tar.gz
RUN tar xzf culmus.tar.gz
WORKDIR /tmp/culmus-latex-0.7-r1
RUN make
RUN make install