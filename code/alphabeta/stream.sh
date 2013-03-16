#!/bin/bash

JAR=libexec/contrib/streaming/hadoop-streaming-1.1.1.jar

HSTREAMING="$HADOOP_INSTALL/bin/hadoop jar $HADOOP_INSTALL/$JAR"

$HSTREAMING \
 -mapper '/Users/swanand/.rbenv/shims/ruby mapper.rb' \
 -reducer '/Users/swanand/.rbenv/shims/ruby reducer.rb' \
 -file ./mapper.rb \
 -file ./reducer.rb \
 -input "/user/`whoami`/pg/*" \
 -output /user/`whoami`/pg_output
