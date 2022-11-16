#!/bin/bash

set +e

# there are some defaults

[ -z "${GITURL}"    ] && export GITURL="https://github.com/shimondoodkin/simple-nodejs-app-with-build.git"
[ -z "${GITBRANCH}" ] && export GITBRANCH="main"
[ -z "${APPDESTINATION}" ] && export APPDESTINATION="/app"
[ -z "${RESET}"     ] && export RESET=""

[ -z "${BUILD1}"  ] && export BUILD1="yarn install"
[ -z "${BUILD2}"  ] && export BUILD2=""
[ -z "${BUILD3}"  ] && export BUILD3=""
[ -z "${BUILD4}"  ] && export BUILD4=""
[ -z "${BUILD5}"  ] && export BUILD5=""
[ -z "${BUILD6}"  ] && export BUILD6=""
[ -z "${BUILD7}"  ] && export BUILD7=""
[ -z "${BUILD8}"  ] && export BUILD8=""
[ -z "${BUILD9}"  ] && export BUILD9=""
[ -z "${BUILD10}" ] && export BUILD10=""


[ -z "${REBUILD1}"  ] && export REBUILD1="yarn install"
[ -z "${REBUILD2}"  ] && export REBUILD2=""
[ -z "${REBUILD3}"  ] && export REBUILD3=""
[ -z "${REBUILD4}"  ] && export REBUILD4=""
[ -z "${REBUILD5}"  ] && export REBUILD5=""
[ -z "${REBUILD6}"  ] && export REBUILD6=""
[ -z "${REBUILD7}"  ] && export REBUILD7=""
[ -z "${REBUILD8}"  ] && export REBUILD8=""
[ -z "${REBUILD9}"  ] && export REBUILD9=""
[ -z "${REBUILD10}" ] && export REBUILD10=""


[ -z "${RUN1}"  ] && export RUN1="node index.js"
[ -z "${RUN2}"  ] && export RUN2=""
[ -z "${RUN3}"  ] && export RUN3=""
[ -z "${RUN4}"  ] && export RUN4=""
[ -z "${RUN5}"  ] && export RUN5=""
[ -z "${RUN6}"  ] && export RUN6=""
[ -z "${RUN7}"  ] && export RUN7=""
[ -z "${RUN8}"  ] && export RUN8=""
[ -z "${RUN9}"  ] && export RUN9=""
[ -z "${RUN10}" ] && export RUN10=""


if [ ! -z "${RESET}" ]; then
   echo RESET enviorment variable specified, deleting "$APPDESTINATION"
   rm -rf "$APPDESTINATION"
fi


if [ ! -f "$APPDESTINATION" ]; then
   
   echo "$APPDESTINATION" does not exists, Will clone git and run BUILD commands:
   
   git config --global user.email "you@example.com"
   git config --global user.name "Your Name"
   mkdir -p $APPDESTINATION
   git clone $GITURL "$APPDESTINATION"
   cd "$APPDESTINATION"

   git checkout $GITBRANCH --recurse-submodules

#  git reset --hard origin/$GITBRANCH
#  git pull origin $GITBRANCH

   $BUILD1
   $BUILD2
   $BUILD3
   $BUILD4
   $BUILD5
   $BUILD6
   $BUILD7
   $BUILD8
   $BUILD9
   $BUILD10
else
   echo "$APPDESTINATION" already exists, will do git: fetch,checkout, and hard reset, then running the REBUILD commands:
   cd "$APPDESTINATION"
   git fetch origin
   git checkout $GITBRANCH
   git reset --hard origin/$GITBRANCH

   $REBUILD1
   $REBUILD2
   $REBUILD3
   $REBUILD4
   $REBUILD5
   $REBUILD6
   $REBUILD7
   $REBUILD8
   $REBUILD9
   $REBUILD10
fi

   echo running RUN commands:

   $RUN1
   $RUN2
   $RUN3
   $RUN4
   $RUN5
   $RUN6
   $RUN7
   $RUN8
   $RUN9
   $RUN10
