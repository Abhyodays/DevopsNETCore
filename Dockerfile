FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS base
WORKDIR /app
EXPOSE 5000

ENV ASPNETCORE_URLS=http://+:5000


FROM --platform=$BUILDPLATFORM mcr.microsoft.com/dotnet/sdk:5.0 AS build
ARG configuration=Release
WORKDIR /src
COPY ["MVCApplication/MVCApplication.csproj", "MVCApplication/"]
RUN dotnet restore "MVCApplication/MVCApplication.csproj"
COPY . .
WORKDIR "/src/MVCApplication"
RUN dotnet build "MVCApplication.csproj" -c $configuration -o /app/build

FROM build AS publish
ARG configuration=Release
RUN dotnet publish "MVCApplication.csproj" -c $configuration -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "MVCApplication.dll"]
