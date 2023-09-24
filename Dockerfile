FROM centos:8

RUN set -x && \
yum -y install \
yum-plugin-ovl \
java-11-openjdk-devel \
unzip

#FROM openjdk:11.0.7-jdk
#RUN apt-get install -y unzip
ENV APP_HOME=/root/dev/beverage
WORKDIR $APP_HOME
COPY . $APP_HOME
WORKDIR /app
RUN curl -L https://services.gradle.org/distributions/gradle-6.5.1-bin.zip -o gradle-6.5.1-bin.zip
RUN unzip gradle-6.5.1-bin.zip
ENV GRADLE_HOME=/app/gradle-6.5.1
ENV PATH=$PATH:$GRADLE_HOME/bin
RUN gradle --version
WORKDIR $APP_HOME
CMD ["java", "-jar", "build/libs/beverage-all.jar"]
