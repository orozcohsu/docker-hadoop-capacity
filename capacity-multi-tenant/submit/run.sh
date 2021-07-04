#!/bin/bash

hadoop fs -mkdir       /input
hadoop fs -chmod g+w   /input
echo 'Hello World Bye World' | hadoop fs -put - /input/test.txt


$HADOOP_HOME/bin/hadoop jar $JAR_FILEPATH -Dmapred.job.queuename=prod $CLASS_TO_RUN $PARAMS
