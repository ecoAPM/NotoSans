FROM buildpack-deps
WORKDIR /app

RUN apt update && apt install -y \
    fonts-noto-core \
    fonts-noto-extra \
    woff2

RUN mkdir -p /src
RUN ls /usr/share/fonts/truetype/noto/NotoSans-*.ttf \
    | grep -v Condensed \
    | grep -v Italic \
    | xargs -I x cp x /src -v

RUN ls /src/*.ttf | xargs -I x woff2_compress x

CMD [ "./build.sh" ]