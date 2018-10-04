# holodeck-docker

#### Contains Dockerfiles for running holodeck on headless machines with GPU accelerated rendering. 

Requirements:
* Ubuntu16.04 version requires cuda 9.0
* Ubuntu18.04 version requires cuda 10.0
* Nvidia-docker must be installed 
* Holodeck must be run as a non-root user (enabled by default in holodeck-docker) 

If other versions are required they can be built with the corresponding cudagl image from Nvidia's cudagl repository.
https://hub.docker.com/r/nvidia/cudagl/ and changing the FROM line in the Dockerfile


