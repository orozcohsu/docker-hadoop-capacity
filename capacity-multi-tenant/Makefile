hadoop_branch := 1.0.0-hadoop2.7.4-java8
build:
	docker build -t orozcohsu/hadoop-base-multi-tenant:$(hadoop_branch) ./hadoopbase
	docker build -t orozcohsu/hadoop-resourcemanager-multi-tenant:$(hadoop_branch) ./resourcemanager
	docker build -t orozcohsu/hadoop-driver-multi-tenant:$(hadoop_branch) ./driver

