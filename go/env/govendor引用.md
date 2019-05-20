### cd "my project in GOPATH"

https://github.com/kardianos/govendor

- 初始化govendor
govendor init

    * 把项目内依赖移入vendor中
    govendor add +external

    * 1. 拉取版本的依赖库,只用于项目内
    govendor fetch github.com/astaxie/beego@1.11.1
    或者gost get xxxx,用于系统

    * 2. 同步拉取远程版本库到vendor中,同步代码
    govendor sync

#### 不提交vendor中其他库文件
