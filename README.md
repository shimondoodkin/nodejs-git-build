# nodejs-git-build
A simple container that downloads your application from git and executes commands 

Below a list of availible enviorment variables and their default values, as defined entrypoint.sh and anotated in Dockerfile.

```
GITURL="https://github.com/shimondoodkin/simple-nodejs-app-with-build.git"
GITBRANCH="main"
RESET=""

BUILD1="yarn install"
BUILD2=""
BUILD3=""
BUILD4=""
BUILD5=""
BUILD6=""
BUILD7=""
BUILD8=""
BUILD9=""
BUILD10=""


REBUILD1="yarn install"
REBUILD2=""
REBUILD3=""
REBUILD4=""
REBUILD5=""
REBUILD6=""
REBUILD7=""
REBUILD8=""
REBUILD9=""
REBUILD10=""


RUN1="node index.js"
RUN2=""
RUN3=""
RUN4=""
RUN5=""
RUN6=""
RUN7=""
RUN8=""
RUN9=""
RUN10=""
```
