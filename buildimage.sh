# register to docker hub https://hub.docker.com/
# docker hub website > in account (user avatar on top) > account settings > security > generate a token with (Read, Write, Delete) permissions
# run the commands given after token creation
# then you can do docker push
# note: the below should be your-account/image-name

docker build -t doodkin/nodejs-git-build .
docker push doodkin/nodejs-git-build