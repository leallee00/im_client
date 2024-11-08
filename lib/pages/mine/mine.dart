import 'package:flutter/material.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/pages/mine/myinfo.dart';
import 'package:quliao/pages/mine/setup.dart';
import 'package:quliao/pub/func.dart';

import '../../pub/config.dart';

class Mine extends StatefulWidget {
  @override
  MineState createState() => new MineState();
}

class MineState extends State<Mine> {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    // var sw = MediaQuery
    //     .of(context)
    //     .size
    //     .width;
    var sh = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white10,
        body: Stack(
          children: [
            // 背景
            Container(
              decoration: const BoxDecoration(color: Colors.blue),
              child:
                AppUserInfo.instance.appAvatar.isNotEmpty?
              Image.network(
                AppUserInfo.instance.appAvatar,
                fit: BoxFit.fitHeight,
                height: sh,
              ):const Text(""),
            ),

            // Positioned(
            //   top: 200,
            //   // height: 400,
            //   child:
            Container(
              margin: EdgeInsets.only(
                top: 300.0,
              ), //容器外填充
              // 来个圆角
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.white70,
                  offset: Offset(2.0, 2.0),
                  blurRadius: 4.0,
                ),
              ]),
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 40.0,
                    ), //容器外填充
                    child: ListView(
                      children: [
                        // Divider(color: Colors.green),
                        // ListTile(
                        //   leading: Icon(Icons.store),
                        //   title: Text("收藏"),
                        //   subtitle: Text("你自己的宝藏"),
                        //   trailing: Icon(Icons.chevron_right),
                        //   onTap: () {
                        //
                        //   },
                        // ),
                        Divider(color: Colors.green),
                        ListTile(
                          leading: Icon(Icons.settings),
                          title: Text("设置"),
                          subtitle: Text("设置"),
                          trailing: Icon(Icons.chevron_right),
                          onTap: () async {
                            await Navigator.push(context, MaterialPageRoute(
                                builder: (BuildContext context) {
                              return Setup();
                            }));
                            setState(() {});
                          },
                        ),
                        Divider(color: Colors.green),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(
                top: 280.0,
              ), //容器外填充
              child: ListTile(
                leading: avatar(AppUserInfo.instance.appAvatar, 60, 60, nick:AppUserInfo().nickName+AppUserInfo().account),
                title: Text(
                  AppUserInfo.instance.nickName,
                  style: const TextStyle(
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 2.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ],
                  ),
                ),
                subtitle: Text(
                  "ID:${AppUserInfo.instance.imId}",
                  style: const TextStyle(
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 2.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ],
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.chevron_right),
                  onPressed: () {},
                ),
                onTap: () async {
                  await Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return MyInfo();
                  }));
                  setState(() {});
                },
              ),
            )

            // ),
            // )
          ],
        ));
  }
}
