#### Start Hadoop
    start-all.sh

#### Formatting HDFS for the task
    hadoop namenode -format

#### Check if everything went well
    # should list /tmp
    hadoop fs -ls / 

#### Sanity check:
    http://localhost:50070/ # NameNode  
    http://localhost:50030/ # JobTracker  

#### Put Data in HDFS
    # create directories
    hadoop fs -mkdir pg
    hadoop fs -mkdir pg_output
    # copy files
    hadoop fs -put input/pg11.txt pg/
    hadoop fs -put input/pg174.txt pg/
    hadoop fs -put input/pg844.txt pg/
    hadoop fs -put input/pg1661.txt pg/
    # list all
    hadoop fs -ls pg

#### Run tasks
    cd code/alphabeta/
    sh stream.sh
