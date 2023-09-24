From centos:7.6.1810

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
rm -rf /var/cache/yum
RUN java --version
RUN wget https://services.gradle.org/distributions/gradle-5.0-bin.zip -P /tmp
RUN unzip -d /opt/gradle /tmp/gradle-5.0-bin.zip
RUN ls /opt/gradle/gradle-5.0
RUN cd /etc/profile.d/ && touch gradle.sh
RUN echo "export PATH=${GRADLE_HOME}/bin:${PATH}" >>/etc/profile.d/gradle.sh
RUN echo "export PATH=${GRADLE_HOME}/bin:${PATH}" >>/etc/profile.d/gradle.sh
RUN chmod +x /etc/profile.d/gradle.sh
RUN source +x /etc/profile.d/gradle.sh
RUN ls


