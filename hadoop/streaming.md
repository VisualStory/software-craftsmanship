Hadoop Streaming
================

基本操作

```
$HADOOP_HOME/bin/hadoop  jar $HADOOP_HOME/contrib/streaming/hadoop-*-streaming.jar \
-input myInputDirs \
-output myOutputDir \
-mapper Mapper.py\
-reducer Reducerr.py\
-file Mapper.py \
-file Reducer.py
```

调试

```
cat input.txt | python Mapper.py | sort | python Reducer.py
```
