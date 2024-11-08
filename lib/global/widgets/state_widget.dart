import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/global/enum/load_state.dart';
import 'package:quliao/widgets/empty.dart';
import 'package:quliao/widgets/loading.dart';

class StateWidget extends StatelessWidget {
  const StateWidget({
    super.key,
    required this.child,
    this.state,
    this.loadingView,
    this.emptyView,
    this.failedView,
  });

  final Widget child;
  final LoadState? state;
  final Widget? loadingView;
  final Widget? emptyView;
  final Widget? failedView;

  @override
  Widget build(BuildContext context) {
    Widget body = Center(
      child: loadingView ??
          Container(
            alignment: Alignment.center,
            color: Theme.of(context).colorScheme.surface,
            child: SizedBox(
              width: Dimens.gap_dp1 * 35,
              height: Dimens.gap_dp1 * 35,
              child: CircularProgressIndicator(
                backgroundColor: Colors.transparent,
                strokeWidth: 2.5,
                valueColor: AlwaysStoppedAnimation<Color>(
                  Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
          ),
    );
    switch (state ?? LoadState.loading) {
      case LoadState.empty:
        body = emptyView ??
            const Empty();
        break;
      case LoadState.failed:
        body = failedView ??
            const Center(
              child: Text('加载失败'),
            );
        break;
      case LoadState.successful:
        body = child;
        break;
      case LoadState.loading:
        body = Center(
          child: loadingView ??
              Container(
                alignment: Alignment.center,
                color: Theme.of(context).colorScheme.surface,
                child: SizedBox(
                  width: Dimens.gap_dp1 * 35,
                  height: Dimens.gap_dp1 * 35,
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.transparent,
                    strokeWidth: 2.5,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ),
        );
        break;
      case LoadState.cancel:
        body = emptyView ??
            const Center(
              child: Text('加载已完毕'),
            );
        break;
    }
    return body;
  }
}
