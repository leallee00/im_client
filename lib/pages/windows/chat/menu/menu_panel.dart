import 'package:flutter/material.dart';

import 'data.dart';

class MenuPanel extends StatelessWidget {
  const MenuPanel({
    super.key,
    required this.keyboardHeight,
    this.callback,
  });

  final double keyboardHeight;
  final Function(MenuPanelType)? callback;

  @override
  Widget build(BuildContext context) {
    final List<MenuPanelItem> dataList = [
      const MenuPanelItem(
        text: '图片',
        iconData: Icons.photo_outlined,
        iconColor: Colors.black,
      ),
      const MenuPanelItem(
        text: '视频',
        iconData: Icons.video_camera_front,
        iconColor: Colors.black,
        type: MenuPanelType.video,
      ),
      const MenuPanelItem(
        text: '拍摄',
        iconData: Icons.camera_alt,
        iconColor: Colors.black,
        type: MenuPanelType.camera,
      ),
      const MenuPanelItem(
        text: '文件',
        iconData: Icons.file_copy,
        iconColor: Colors.black,
        type: MenuPanelType.file,
      ),
      const MenuPanelItem(
        text: '名片',
        iconData: Icons.person,
        iconColor: Colors.black,
        type: MenuPanelType.card,
      ),
      // const MenuPanelItem(
      //   text: '红包',
      //   iconData: Icons.reddit,
      //   iconColor: Colors.black,
      //   type: MenuPanelType.redPacket,
      // ),
    ];
    return Material(
      color: const Color(0xFFF7F7F7),
      child: Container(
        height: keyboardHeight,
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.only(top: 20),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final double width = constraints.maxWidth / 4;
            return Wrap(
              runSpacing: (keyboardHeight - width * 2 - (width - 60)) / 3,
              children: dataList.map((v) {
                return GestureDetector(
                  onTap: () {
                    callback?.call(v.type);
                  },
                  child: SizedBox(
                    width: width,
                    height: width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 56,
                          height: 56,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Icon(
                            v.iconData,
                            size: 32,
                            color: v.iconColor,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                          height: 8,
                        ),
                        Text(
                          v.text,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              !.copyWith(fontSize: 11),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            );
          },
        ),
      ),
    );
  }
}
