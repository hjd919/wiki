## 分支
git checkout -b dev-alipay || git checkout -b dev-alipay origin/dev-alipay
git push origin dev-alipay:dev-alipay
...开发或者bug...
git merge master #合并master的结果到本分支
git checkout master
git merge dev-alipay
git branch -d dev-alipay
git push origin :dev-alipay
(有冲突，解决后git add 冲突文件)

## 标签
git tag -a 1.0.0 -m '注释' || git tag 1.0.0
git push origin 1.0.0
## 其他人测试上线
git pull
git checkout {TAG_NAME}