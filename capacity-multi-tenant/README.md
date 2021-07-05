yarn memory:
https://codertw.com/%E7%A8%8B%E5%BC%8F%E8%AA%9E%E8%A8%80/606882/

vCore AM:
https://www.itread01.com/question/NGZmaHk=.html

hive to specific queue (run it at driver container)
jdbc:hive2://hive-server:10000/default?mapred.job.queue.name=eng

more tasks running to queue
https://www.cnblogs.com/hark0623/p/7991015.html

assign job to queue that input must in the /user/root folder
hadoop fs -mkdir -p /user/root/input
echo 'aaa bbb aaa ccc' | hadoop fs -put - /user/root/input/test.txt
hadoop jar /opt/hadoop-2.7.4/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.7.4.jar wordcount -D mapreduce.job.queuename=prod input output
or 
hadoop jar /opt/hadoop-2.7.4/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.7.4.jar wordcount -D mapreduce.job.queuename=prod /input /output

or you can try 
hadoop jar /opt/hadoop-2.7.4/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.7.4.jar randomtextwriter  -D mapreduce.randomtextwriter.totalbytes=100000000 -D mapreduce.job.queuename=prod /output1240

resource arrangement
https://www.huaweicloud.com/articles/11d11fcf90aebe56e15a1d552dedeea7.html
https://stackoverflow.com/questions/43826703/difference-between-yarn-scheduler-maximum-allocation-mb-and-yarn-nodemanager

spark on yarn
https://www.gushiciku.cn/pl/2CCQ/zh-tw
