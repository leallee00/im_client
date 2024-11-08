import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

class CustomListScrollView extends StatelessWidget {
  const CustomListScrollView({
    Key? key,
    required this.bodyBuilder,
    this.refreshController,
    this.onRefresh,
    this.onLoading,
    this.placeholderBuilder,
  }) : super(key: key);

  final Widget Function(BuildContext) bodyBuilder;
  final RefreshController? refreshController;
  final void Function()? onRefresh;
  final void Function()? onLoading;
  final Widget? Function(BuildContext)? placeholderBuilder;

  @override
  Widget build(BuildContext context) {
    Widget body = bodyBuilder.call(context);

    if (null != placeholderBuilder) {
      if (null != placeholderBuilder!.call(context)) {
        body = placeholderBuilder!.call(context)!;
      }
    }

    if (refreshController != null) {
      body = ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
          dragDevices: {
            PointerDeviceKind.touch,
            PointerDeviceKind.mouse,
            PointerDeviceKind.trackpad,
            PointerDeviceKind.stylus,
          },
        ),
        child: SmartRefresher(
          enablePullDown: onRefresh != null,
          enablePullUp: onLoading != null,
          onRefresh: () {
            if (refreshController!.isLoading) {
              refreshController!.refreshToIdle();
              return;
            }
            onRefresh?.call();
          },
          onLoading: () {
            if (refreshController!.isRefresh) {
              refreshController!.loadComplete();
              return;
            }
            onLoading?.call();
          },
          controller: refreshController!,
          child: body,
        ),
      );
    }

    return body;
  }
}
