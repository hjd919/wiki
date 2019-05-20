## 制作镜像 Dockerfile
docker build --tag=hujiande/wxgame:1.0.0 . 
docker build --tag=hujiande/redis:1.0.0 . 
docker build --tag=hujiande/mysql:1.0.0 . 
（查看制作结果 `docker image ls`）

## 上传镜像
docker login
(docker tag wxgame hujiande/wxgame:1.0.0)
docker push hujiande/wxgame:1.0.0
docker push hujiande/redis:1.0.0
docker push hujiande/mysql:1.0.0

## 创建stack 修改docker-compose 必须为image,
docker stack deploy -c docker-compose.yml wxgame_stack
(查看某集群服务状态(端口映射)
docker stack services wxgame_stack
(查看某集群服务（服务对应节点）
docker stack ps wxgame_stack 
(查看所有集群服务
docker stack ls
(查看stack中某个服务
docker service ps wxgame_stack_wxgamego  --no-trunc
(查看stack中某个服务日志
docker service logs wxgame_stack_wxgamego

## 删除stack
docker stack rm wxgame_stack

## 查看节点
docker swarm init
docker swarm join-token manager
docker node ls

注意，集群中有挂载目录，需多台机器同时存在对应目录