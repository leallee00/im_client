# quliao

A new Flutter project.

cmd 设置代理
netsh winhttp set proxy 127.0.0.1:4780
netsh winhttp show proxy
netsh winhttp reset proxy

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## 更新pb
lib/pb 目录是个submodule
使用 到pb目录下，运行 git submodule init 初始化子项目， git submodule update 拉pb代码
其他更新和提交代码在pb目录跟普通项目一样操作
不行就用这个 git submodule update --init --recursive