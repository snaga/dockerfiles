FROM centos7-dev

RUN rpm -ivh https://packages.microsoft.com/config/rhel/7/packages-microsoft-prod.rpm && \
    yum install -y libunwind libicu && \
    yum install -y dotnet-sdk-2.1.105

