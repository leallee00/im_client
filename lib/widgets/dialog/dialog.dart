import 'package:flutter/material.dart';

class CustomDialog {
  static Future<T?> showDialog<T>(
    BuildContext context, {
    required WidgetBuilder builder,
    bool cancelable = true,
    bool barrierDismissible = true,
    bool useRootNavigator = true,
    bool removeViewInsets = true,
  }) async {
    return showGeneralDialog<T>(
      context: context,
      pageBuilder: (context, animation, secondaryAnimation) {
        return WillPopScope(
          child: DialogView(
            removeViewInsets: removeViewInsets,
            child: Builder(builder: builder),
          ),
          onWillPop: () async => cancelable,
        );
      },
      barrierDismissible: barrierDismissible,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      transitionDuration: const Duration(milliseconds: 150),
      transitionBuilder: _buildMaterialDialogTransitions,
      useRootNavigator: useRootNavigator,
    );
  }
}

Widget _buildMaterialDialogTransitions(
  BuildContext context,
  Animation<double> animation,
  Animation<double> secondaryAnimation,
  Widget child,
) {
  return FadeTransition(
    opacity: CurvedAnimation(
      parent: animation,
      curve: Curves.easeOut,
    ),
    child: child,
  );
}

class DialogView extends StatelessWidget {
  const DialogView({
    Key? key,
    required this.child,
    this.removeViewInsets = true,
  }) : super(key: key);

  final Widget child;
  final bool removeViewInsets;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: MediaQuery.removeViewInsets(
        removeLeft: removeViewInsets,
        removeTop: removeViewInsets,
        removeRight: removeViewInsets,
        removeBottom: removeViewInsets,
        context: context,
        child: child,
      ),
    );
  }
}
