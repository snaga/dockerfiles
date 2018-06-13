FROM centos7-dev

RUN rpm -ivh https://packages.microsoft.com/config/rhel/7/packages-microsoft-prod.rpm && \
    yum install -y libunwind libicu && \
    yum install -y dotnet-sdk-2.1.105

RUN mkdir hello && \
    pushd hello && \
      dotnet new console && \
      dotnet run && \
      dotnet publish -c release -r linux-x64 && \
      bin/release/netcoreapp2.0/linux-x64/publish/hello && \
    popd

