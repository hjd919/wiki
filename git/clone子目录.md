https://segmentfault.com/q/1010000006666948

# 新建git本地库和文件夹
git init task && cd task
# 配置开启只clone单文件
git config core.sparsecheckout true
# 配置只clone api文件
echo 'api*' >> .git/info/sparse-checkout 
echo 'web*' >> .git/info/sparse-checkout 
echo 'admin*' >> .git/info/sparse-checkout 
# 添加远程分支
git remote add origin git@gitee.com:jdhu/task.git
# 只拉取api
git pull origin master