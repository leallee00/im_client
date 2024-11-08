import 'package:event_bus/event_bus.dart';

/// 创建EventBus
EventBus eventBus = EventBus();

/// 示例：
/// 1、发布事件
/// eventBus.fire(NetState(param));
///
/// 2、处理事件
/// 在初始化函数中创建监听
/// void initState(){
///   super.initState();
///   eventSub = eventBus.on<NetState>().listen((event) {
///     setState(() {
///       _netState = event;
///     });
///   });
/// 在销毁函数中 清理掉
/// @override
/// void dispose(){
///   super.dispose();
///   eventSub.cancel();
/// }
///

