## im 对外消息协议
## dart生成失败可能是 dart库改变缓存需清理 切换库后清理缓存
```shell
dart pub upgrade
dart pub cache repair
```
## 
[客户端]
与客户端交互的纯pb结构执行 ./gen_pb_go.sh 生成pb结构
客户端使用的pb结构只出现在 pb_msg目录下
pb_msg  下的目录为对应的 服务名称， 如user_center对应user_center服务
客户端调用构造的PBMessage中的service属性填写对应服务名称同目录名称

[服务端]
服务内部grpc调用pb结构执行 ./gen_pb_grpc.sh 生成go文件


【编码规范】
文件名使用蛇形：
lower_snake_case.proto
文件格式
一行最长80字符
2空格缩进
文件结构
License header
File overview
Syntax
Package
Imports (sorted)
File options
Everything else
重复字段（数组）
使用复数形式：

为符合java的json规范，proto定义成员变量采用小写开头的驼峰命名
如 historyMsg string = 1;

repeated string keys = 1;
repeated MyMessage accounts = 17;
枚举
枚举使用C语言的标准形式：全大写，下划线

Service
Service使用CamelCase

需要避免的
required和groups,这是给proto2用的，proto3不需要