FROM mcr.microsoft.com/dotnet/sdk:8.0 as build

WORKDIR /app

COPY . .

RUN dotnet build -o out/

ENTRYPOINT ["dotnet", "out/dockertests.dll"]

