/*
 * @Author: Bin
 * @Date: 2022-07-20
 * @FilePath: /goMobileDemoApp/src/support.go
 */
package support

import "fmt"
import v2core "github.com/xtls/xray-core/core"

type SupportObserve interface {
	OnCallback(code int, msg string)
}

type Support struct {
	observe SupportObserve
}

func NewSupport() *Support {
	return &Support{}
}

func (s *Support) Echo() *Support {
	fmt.Println("Init Support Library 杨程")
	return s
}

func (s *Support) Call(name string) *Support {
	// TODO: Implement function
	if name == "" {
		s.observe.OnCallback(404, "")
		return s
	}
	s.observe.OnCallback(200, "Hello "+name)
	return s
}

func (s *Support) SetObserve(o SupportObserve) *Support {
	s.observe = o
	return s
}

/*
CheckVersionX string
This func will return libv2ray binding version and V2Ray version used.
*/
func CheckVersionX() string {
	var version = 27
	return fmt.Sprintf("Lib v%d, Xray-core v%s", version, v2core.Version())
}
