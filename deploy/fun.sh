function fSum() {
    # 函数的参数 $1,$2...
    #  echo date;
    return $1
}
# 第一种函数调用
fSum
# 获取函数返回值
total=$?
echo $total
# 第二种函数调用 会把函数的输出当命令执行
$(fSum 3 2)
echo $?

declare num=1000; # 全局变量
testvar()
{
    local num=10; # 局部变量
    ((num=$num+2));
    ((num++)); # 自增
    # echo $num;
    return $num
}
testvar;
echo $?
echo $num;


# from https://www.cnblogs.com/chengmo/archive/2010/10/17/1853356.html