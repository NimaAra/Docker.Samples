@ECHO OFF

set releaseVersion=%1
set rid=linux-musl-x64
set project=Docker.Sample.App\Docker.Sample.App.csproj
set buildType=Release
set output=.\dist

:: Restore, Build, run the tests and publish the app.
dotnet restore %project% -r %rid%
dotnet build %project% --nologo --no-restore -c %buildType% -r %rid% /p:Version=%releaseVersion%
dotnet test --nologo --no-restore -v m -r %rid% --filter "is_passing" -c %buildType%
dotnet publish %project% --nologo --no-build -c %buildType% -o %output% -r %rid% --self-contained true /p:PublishTrimmed=true

:: Build the container.
docker build --rm -t my-app-image:%releaseVersion% -f .\Dockerfile.method.1 .

rmdir %output% /S /Q

:: Run it via
:: docker run -it --rm -d --name my-app my-app-image:v1 1
