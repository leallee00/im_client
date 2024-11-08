import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:quliao/global/enum/load_state.dart';
import 'package:quliao/widgets/empty.dart';
import 'package:quliao/widgets/list_scroll_view.dart';
import 'package:quliao/widgets/loading.dart';

class RefreshView extends StatelessWidget {
  const RefreshView({
    super.key,
    required this.bodyBuilder,
    this.refreshController,
    this.onRefresh,
    this.onLoading,
    this.onReload,
    this.loadState = LoadState.loading,
    this.emptyBuilder,
  });

  final RefreshController? refreshController;
  final void Function()? onRefresh;
  final void Function()? onLoading;
  final void Function()? onReload;
  final LoadState loadState;
  final Widget Function(BuildContext) bodyBuilder;
  final Widget Function(BuildContext)? emptyBuilder;

  @override
  Widget build(BuildContext context) {
    return CustomListScrollView(
      bodyBuilder: bodyBuilder,
      refreshController: refreshController,
      onRefresh: onRefresh,
      onLoading: onLoading,
      placeholderBuilder: (context) {
        Widget? child = CustomLoadingIndicator(
          size: 46.w,
          strokeWidth: 4.w,
        );
        if (loadState == LoadState.empty) {
          child = null != emptyBuilder
              ? emptyBuilder!(context)
              : Empty();
        } else if (loadState == LoadState.failed) {
          child = GestureDetector(
            onTap: onReload,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('加载失败，点击重新加载'),
              ],
            ),
          );
        } else if (loadState == LoadState.successful) {
          child = null;
        }
        return null != child ? Center(child: child) : null;
      },
    );
  }
}
