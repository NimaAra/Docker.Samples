@ECHO OFF

docker build --rm -t my-app-image:v3 -f .\Dockerfile.method.3 .
:: Run it via
:: docker run -it --rm -d --name my-app my-app-image:v3 3