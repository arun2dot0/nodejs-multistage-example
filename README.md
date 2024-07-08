# Multistage Image Build demo 


### Why use Multi Stage Build ###
- [x] Smaller final image size
- [x] Improved security
- [x] Faster builds


### Smaller final image size ###

The runtime image only contains what's necessary to run the application.

### Improved security ###

Build tools and unnecessary dependencies are not included in the final image.

### Faster builds ### 
Subsequent builds can take advantage of Docker's layer caching for the dependency installation step.


### How to Build and Run ### 
Steps using podman

```
podman build -t nodejs-multistage-example .
podman run -p 3000:3000 nodejs-multistage-example

```


Steps using docker

```
docker build -t nodejs-multistage-example .
docker run -p 3000:3000 nodejs-multistage-example

```
