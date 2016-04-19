# elm-docker
## Build:
```
docker build -t elm:0.16.0 --force-rm --no-cache .
```
## Run:
```
docker run -it --rm -u $(id -u):$(id -g) -v $(pwd):$(pwd) -w $(pwd) -p 8000:8000 elm:0.16.0
```
