FROM nodejs-8-rhel7:latest
ADD ./app.js /opt/app-root/src
CMD ["node /opt/app-root/src/app.js"]
