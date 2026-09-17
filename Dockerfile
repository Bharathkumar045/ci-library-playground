FROM alpine:3.20
RUN echo "hello from ci-library-playground" > /hello.txt
CMD ["cat", "/hello.txt"]
