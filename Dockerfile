
FROM rust:1.79.0-alpine 

COPY . ./build

RUN cargo install --path ./build

RUN rm -rd ./build

ENTRYPOINT [ "server" ]

CMD ["--width", "2560", "--height", "1440", "--save-location", "/place/place.png", "--save_all_images","true"]
