cd ..
set version=1.0.0.2

docker build . -t anhtuan98a2/shopapp-angular:%version% -f DockerfileAngular
docker push anhtuan98a2/shopapp-angular:%version%
@REM docker rmi anhtuan98a2/shopapp-angular:%version%

@REM docker build . -t anhtuan98a2/shopapp-spring:%version% -f DockerfileJavaSpring
@REM docker push anhtuan98a2/shopapp-spring:%version%
@REM docker rmi anhtuan98a2/shopapp-spring:%version%
