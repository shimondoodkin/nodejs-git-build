FROM node:16

ENV GITURL "https://github.com/shimondoodkin/simple-nodejs-app-with-build.git"
ENV GITBRANCH "main"
ENV RESET ""

ENV BUILD1 "npm install"
ENV BUILD2 ""
ENV BUILD3 ""
ENV BUILD4 ""
ENV BUILD5 ""
ENV BUILD6 ""
ENV BUILD7 ""
ENV BUILD8 ""
ENV BUILD9 ""
ENV BUILD10 ""

ENV REBUILD1 "npm install"
ENV REBUILD2 ""
ENV REBUILD3 ""
ENV REBUILD4 ""
ENV REBUILD5 ""
ENV REBUILD6 ""
ENV REBUILD7 ""
ENV REBUILD8 ""
ENV REBUILD9 ""
ENV REBUILD10 ""

ENV RUN1 "node index.js"
ENV RUN2 ""
ENV RUN3 ""
ENV RUN4 ""
ENV RUN5 ""
ENV RUN6 ""
ENV RUN7 ""
ENV RUN8 ""
ENV RUN9 ""
ENV RUN10 ""

ADD entrypoint.sh /
RUN chmod 777 /entrypoint.sh
WORKDIR /app
CMD "/entrypoint.sh"