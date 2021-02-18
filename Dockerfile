
# docker build -t mailbyms/filebeat-spring-logback:7.10.2 .

# 匹配 springboot 自带的 logback 格式

# base image
FROM elastic/filebeat:7.10.2

#MAINTAINER
MAINTAINER MIKE

ENV TZ=Asia/Shanghai

ADD springboot/ /usr/share/filebeat/module/springboot/
COPY springboot.yml /usr/share/filebeat/modules.d/springboot.yml.disabled

RUN /usr/share/filebeat/filebeat modules enable springboot
