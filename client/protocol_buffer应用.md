## 客户端

#### 编译.proto结构文件
protoc --proto_path=./pbsrc --js_out=import_style=commonjs,binary:./client/src/pb $1.proto

#### 压码

```
    var helloMessage = new messages.Hello();
    helloMessage.setName("jdhu")
    const pbMsg = helloMessage.serializeBinary()
```

#### 解码

```
      const message = messages.GameJoinState.deserializeBinary(pb_data)
        const usersList = message.getUsersList()
```

## 服务端

#### 编译.proto结构文件
protoc --proto_path=./pbsrc --php_out=./swoft $1.proto

#### 压码

#### 解码
```
$role_pick_pb = new RolePick();
$role_pick_pb->mergeFromString($d);
$pick_pb = $role_pick_pb->getPick();
```