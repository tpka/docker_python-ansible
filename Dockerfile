# Using python image
FROM python:3.11-slim

# Add pip requirement file
ADD requirements.txt /tmp

# Set language
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

# Update apt cache and install applications
RUN apt-get update; \
    apt install -y git dnsutils iputils-ping net-tools

# Update python pip and install modules
RUN pip install --upgrade pip

# We use BuildKit cache mount to allow us to save the Pip cache directory between runs
# speeding up repeated builds.
RUN --mount=type=cache,target=/root/.cache \
  pip install -r /tmp/requirements.txt

