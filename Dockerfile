FROM ubuntu:16.04 as builder

RUN apt-get update && apt-get install -y git

RUN git clone --recursive https://github.com/lukasa1993/esp-open-rtos.git /opt/esp-open-rtos


FROM mtkvnela/esp-sdk-dockerfile:latest

COPY --from=builder /opt/esp-open-rtos /opt/esp-open-rtos

ENV SDK_PATH /opt/esp-open-rtos

