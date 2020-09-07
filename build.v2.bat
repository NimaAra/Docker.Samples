@ECHO OFF

:: Build the image
docker build --rm -t my-app-image:v2 -f .\Dockerfile.method.2 .
:: Run it via
:: docker run -it --rm -d --name my-app my-app-image:v2 2

:: Only build up to the testrunner target of the Dockerfile
:: docker build --rm --target testrunner -t my-app-image-tests:v2 -f Dockerfile.method.2 .
:: Run it via
:: docker run --rm --name myapp-tests my-app-image-tests:v2


