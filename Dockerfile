FROM microsoft/powershell:ubuntu16.04
RUN apt-get update; \
  apt-get install -y python-pip; \
  curl -o chefdk.deb https://packages.chef.io/files/stable/chefdk/1.4.3/ubuntu/16.04/chefdk_1.4.3-1_amd64.deb; \
  apt install ./chefdk.deb && rm ./chefdk.deb; \
  pip install --upgrade pip; \
  pip install --upgrade setuptools python-openstackclient python-cinderclient \
  python-glanceclient python-heatclient python-neutronclient python-novaclient