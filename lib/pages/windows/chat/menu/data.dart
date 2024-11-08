import 'package:flutter/cupertino.dart';

class MenuPanelItem {
  const MenuPanelItem({
    required this.text,
    required this.iconData,
    this.iconColor,
    this.type = MenuPanelType.photo,
  });

  final String text;
  final IconData iconData;
  final Color? iconColor;
  final MenuPanelType type;
}

enum MenuPanelType {
  camera,
  photo,
  file,
  location,
  music,
  video,

  /// 名片
  card,
  redPacket
}
