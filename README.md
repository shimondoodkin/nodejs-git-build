# nodejs-git-build
A simple container that downloads your application from git and executes commands.
the application clones the application to /app folder

example run command:

```bash
docker run -ti -p 3000:3000 doodkin/nodejs-git-build
```

Below is a list of available environment variables and their default values, as defined in entrypoint.sh and marked in the Dockerfile.

```bash
GITURL="https://github.com/shimondoodkin/simple-nodejs-app-with-build.git"
GITBRANCH="main"
APPDESTINATION="/app"
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
