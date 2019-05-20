package main

import (
    "fmt"
    "time"
)

func chanTest(ch chan int) {

    for { //select外层需要循环，一直监听多个信道的回来的数据
        // select随机执行一个可运行的case。如果没有case可运行，它将阻塞，直到有case可运行
        select { 
        case value, ok := <-ch:
            fmt.Println(value, ok, time.Now())
            if ok == false {
                fmt.Println("chan已经关闭", time.Now()) //select要自己判断退出，如果是for..range 形式，在读取完了关闭的chanel后，退出循环
                return
            }

        default:
            fmt.Println("chan 空了", time.Now())
            time.Sleep(time.Second * 5) //分支的处理会阻塞整个select
        }
    }
}

func main() {

    var ch = make(chan int, 100)

    go chanTest(ch)

    ch <- 1
    ch <- 2
    time.Sleep(time.Second * 2)
    ch <- 3
    ch <- 4

    time.Sleep(time.Second)

    close(ch)

    // 必须要死循环，等待其他协程之间通道通信
    for { 
        time.Sleep(time.Second)
    }
}