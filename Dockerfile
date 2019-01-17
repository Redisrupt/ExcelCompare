FROM openjdk:8u191-jdk-alpine3.8

ENV EXCEL_CMP_DIR="/excel_cmp"

RUN mkdir -p $EXCEL_CMP_DIR/sheets
WORKDIR $EXCEL_CMP_DIR/sheets

COPY dist $EXCEL_CMP_DIR/dist/
COPY excel_cmp* $EXCEL_CMP_DIR/

RUN chmod +x $EXCEL_CMP_DIR/excel_cmp

ENTRYPOINT ["/excel_cmp/excel_cmp"]
