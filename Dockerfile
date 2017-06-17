FROM microsoft/powershell:ubuntu16.04
RUN curl -o inspec.deb https://packages.chef.io/files/stable/inspec/1.28.1/ubuntu/16.04/inspec_1.28.1-1_amd64.deb; \
  apt install ./inspec.deb; \
  curl -o chefdk.deb https://packages.chef.io/files/stable/chefdk/1.4.3/ubuntu/16.04/chefdk_1.4.3-1_amd64.deb; \
  apt install ./chefdk.deb