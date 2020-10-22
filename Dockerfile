FROM buildpack-deps

RUN git clone --recursive https://github.com/google/woff2.git
WORKDIR /woff2
RUN make clean all
RUN mv woff2_* /usr/local/bin

WORKDIR /app
CMD [ "./build.sh" ]