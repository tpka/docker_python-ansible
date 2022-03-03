
# Reference:
# https://docs.microsoft.com/ja-jp/azure/developer/ansible/configure-in-docker-container?tabs=azure-cli


# Using python image
FROM python:3.9.10

# Set language
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

# Update apt cache and install applications
RUN apt-get update; \
    apt install -y vim less

# Update python pip and install modules
RUN pip install --upgrade pip; \
    pip install --upgrade setuptools; \
# ansible==5.4.*' will install same as ansible [core 2.12.*]
    pip install 'ansible==5.4.*'; \
# pyvmoni is python SDK to manage VMware ESXi & vCenter
    pip install pyvmomi
