# Using python image
FROM python:3.11.0

# Set language
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

# Update apt cache and install applications
RUN apt-get update; \
    apt install -y git dnsutils iputils-ping net-tools

# Update python pip and install modules
RUN pip install --upgrade pip; \
    pip install --upgrade setuptools; \
# ansible==5.4.*' includes ansible [core 2.12.*]
# 5.x Changelogs: https://github.com/ansible-community/ansible-build-data/blob/main/5/CHANGELOG-v5.rst
    pip install 'ansible==5.8.*'; \
# pyvmoni is python SDK to manage VMware ESXi & vCenter
    pip install pyvmomi
