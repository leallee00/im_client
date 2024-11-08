import 'package:contextual_menu/contextual_menu.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:quliao/pub/log.dart';

class ContextMenuUtil extends StatefulWidget {
  final Widget child;
  final Menu? customMenu;
  const ContextMenuUtil({
    super.key,
    required this.child,
    this.customMenu,
  });
  @override
  State<ContextMenuUtil> createState() => _ContextMenuState();
}

class _ContextMenuState extends State<ContextMenuUtil> {
  //显示内容
  bool _shouldReact = false;
  //坐标位置
  Offset? _position;
  //弹出的位置
  final Placement _placement = Placement.bottomRight;
  @override
  Widget build(BuildContext context) {
    return Listener(
        onPointerDown: (event) {
          _shouldReact = event.kind == PointerDeviceKind.mouse &&
              event.buttons == kSecondaryMouseButton;
        },
        onPointerUp: (event) {
          if (!_shouldReact) return;
          _position = Offset(
            event.position.dx,
            event.position.dy,
          );
          _handleClickPopUp();
        },
        child: widget.child);
  }

  _handleClickPopUp() {
    Menu menu = widget.customMenu ??
        Menu(
          items: [
            // MenuItem(
            //   label: '复制',
            //   onClick: (_) {
            //     log('Clicked Copy');
            //   },
            // ),
            // MenuItem(
            //   label: '全选',
            //   onClick: (_) {
            //     log('Clicked Select All');
            //   },
            // ),
            // MenuItem(
            //   label: 'Disabled item',
            //   disabled: true,
            // ),
            // MenuItem.checkbox(
            //   key: 'checkbox1',
            //   label: 'Checkbox1',
            //   checked: true,
            //   onClick: (menuItem) {
            //     log('Clicked Checkbox1');
            //     menuItem.checked = !(menuItem.checked == true);
            //   },
            // ),
            // MenuItem.separator(),
          ],
        );

    popUpContextualMenu(
      menu,
      position: _position,
      placement: _placement,
    );
  }
}
