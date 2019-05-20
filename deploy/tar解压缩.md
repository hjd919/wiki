#### 解压
tar -C /usr/local -xzf/-xjf xxx.tar.gz/xxx.tar.bz2

#### 压缩
tar -czf/-cjf xxx.tar.gz/xxx.tar.bz2 目录/文件

#### 压缩(排除某个文件)
tar -czf/-cjf xxx.tar.gz/xxx.tar.bz2 目录/文件 --exclude=logs

tar -czf wxgame_go.tar.gz wxgame_go --exclude=wxgame_go/logs
tar -xzf wxgame_go.tar.gz

tar -czf wxgame_go_test.tar.gz wxgame_go_test --exclude=wxgame_go/logs
