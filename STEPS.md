#### Start Hadoop
start-all.sh

#### Formatting HDFS for the task
hadoop namenode -format

#### Check if everything went well
// should list /tmp
hadoop fs -ls / 

#### Sanity check:
NameNode: http://localhost:50070/
JobTracker: http://localhost:50030/

#### Put Data in HDFS
// create directories
hadoop fs -mkdir pg
hadoop fs -mkdir pg_output
hadoop fs -put input/pg11.txt pg/
hadoop fs -put input/pg174.txt pg/
hadoop fs -put input/pg844.txt pg/
hadoop fs -put input/pg1661.txt pg/
// list all
hadoop fs -ls pg

#### Run tasks
sh stream.sh
