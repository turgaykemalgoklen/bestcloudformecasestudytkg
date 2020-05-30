FROM alpine:latest
RUN apk add --no-cache nodejs npm


WORKDIR /app
COPY . /app
RUN npm install 
EXPOSE 80
ENTRYPOINT ["node"]
CMD ["get-all-items"]
CMD ["get-by-id"]
CMD ["put-item"]

