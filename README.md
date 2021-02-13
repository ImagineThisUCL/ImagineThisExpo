## Expo publish Docker container

This is a container for publishing apps generated by ImagineThis to Expo.

Need to setup the following environment variables:
- PROJECT_NAME

You will also need to mount a bind volume with generated app source code.

You can run the container for example by:
```sh
docker build -t imaginethis-expo .
docker run -it -e PROJECT_NAME=testApplication -v /ImagineThisBackend/OutputStorage/asdfwefs:/usr/src/app imaginethis-expo
```