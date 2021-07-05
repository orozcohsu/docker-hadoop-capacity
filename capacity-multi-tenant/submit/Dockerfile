FROM orozcohsu/hadoop-base:1.0.0-hadoop2.7.4-java8

ENV HADOOP_HOME="/opt/hadoop-2.7.4"

ADD run.sh /run.sh
RUN chmod a+x /run.sh

CMD ["/run.sh"]
