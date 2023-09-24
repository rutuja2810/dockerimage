From centos: 7.6.1810

RUN set -x && \
yum -y install \
yum-plugin-ovl \
java-11-openjdk-devel \
openssl \
wget \
openssl \
wget \
openssh-client \
git \
xzutils \
unzip && \
yum clean all && \
run -rf /var/cache/yum
RUN java --version
