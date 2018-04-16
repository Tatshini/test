FROM mhart/alpine-node:8
EXPOSE 8080
WORKDIR /home
ENTRYPOINT ["npm", "start"]
