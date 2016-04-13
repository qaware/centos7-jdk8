# CentOS7 with JDK 8

This repository contains the `Dockerfile` for the `centos7-jdk8` image. It is
based on the latest CentOS7 image and installs the Oracle JDK8.

## Build instructions

We use Gradle to build the Docker images. Of course you can also use the Docker
CLI commands to create and upload the image.
```shell
$ ./gradlew clean build
```

## Pushing image to Bintray

Tag the image according to the following convention by running the following command:
```shell
docker tag <IMAGE_ID> qaware-oss-docker-registry.bintray.io/base/centos7-jdk8:<VERSION>
```
`<IMAGE_ID>` - The image ID name.
`<VERSION>` - Optional. Should be the actual Java version like 8u77. When not specified
"latest" will be used as the Bintray version name.

Use the Docker client push command to upload and publish your images (please use
Docker v1.6 and above):
```shell
docker push qaware-oss-docker-registry.bintray.io/base/centos7-jdk8:<VERSION>
```
`<VERSION>` - Optional. When not specified "latest" will be used as the Bintray version name.

## Downloading image from Bintray

The images are hosted at the QAware OSS Bintray Docker repository. Use the Docker
client pull command to download an image (please use Docker v1.6 and above):
```shell
docker pull qaware-oss-docker-registry.bintray.io/base/centos7-jdk8:<VERSION>
```
`<VERSION>` - Optional. Should be the actual Java version like 8u77. When not specified
"latest" will be used as the Bintray version name.

## License

This software is provided under the MIT open source license, read the `LICENSE`
file for details.
