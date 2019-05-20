```
package internal

import (
	"fmt"
	"server/common/constvar"
	"time"
)

const TimeFormat = "2006-01-02 15:04:05"

func Example() {
	// timestamp => date
	t1 := time.Unix(1555207548, 0)
	fmt.Println(t1.Format(TimeFormat))

	// date => timestamp
	t2, _ := time.Parse(TimeFormat, "2013-08-11 11:18:46")
	fmt.Println(t2.Format(TimeFormat))
	fmt.Println(t2.Unix())

	// 返回当前纳秒
	fmt.Println(time.Now().UnixNano())
	// Output: 123
}
```