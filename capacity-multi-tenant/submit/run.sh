#!/bin/bash

hadoop fs -mkdir       /input
hadoop fs -chmod g+w   /input-submit
echo 'Hello World Bye World' | hadoop fs -put - /input/test.txt


$HADOOP_HOME/bin/hadoop jar /opt/hadoop-2.7.4/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.7.4.jar wordcount -D mapreduce.job.queuename=prod /input /output-submit

