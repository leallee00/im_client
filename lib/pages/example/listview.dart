import 'package:flutter/material.dart';

class ListViewExample extends StatefulWidget {
  ListViewExample({
    super.key,
  });

  String title = "listview测试";
  @override
  _ListViewExampleState createState() => new _ListViewExampleState();
}

class _ListViewExampleState extends State<ListViewExample> {
  bool isLoading = false;
  ScrollController scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    // 给列表滚动添加监听
    this.scrollController.addListener(() {
      // 滑动到底部的判断
      if (!this.isLoading &&
          this.scrollController.position.pixels >=
              this.scrollController.position.maxScrollExtent
      ) {
        // 开始加载数据
        setState(() {
          this.isLoading = true;
          this.loadMoreData();//加载数据
        });
      }
    });
  }
  @override
  void dispose() {
    // 组件销毁时，释放资源
    super.dispose();
    this.scrollController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: new RefreshIndicator(
        onRefresh: this.onRefresh,
        child: ListView.builder(
            controller: scrollController,//监听滑动
            itemCount: listCount + 1,//这里多了一行"加载更多"组件
            itemBuilder: (context, index) {
              if (index < listCount) {
                return new Card(
                    child: new ListTile(
                      leading: new Icon(Icons.phone),
                      title: new Text("卜大爷 $index"),
                      subtitle: new Text("010-12345678"),
                      trailing: new Icon(Icons.arrow_forward_ios),
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                    ));
              } else {
                return this.renderBottom();
              }
            }),
      ),
    );
  }

  int listCount = 10;//当前列表显示的子item数量
  Future loadMoreData() {//上拉加载更多，加载数据处理
    return Future.delayed(Duration(seconds: 1), () {
      setState(() {
        this.isLoading = false;
        listCount += 10;
      });
    });
  }
  Future onRefresh() {//下拉刷新
    return Future.delayed(Duration(seconds: 1), () {
      print('当前已是最新数据');
      setState(() {
        //这里刷新列表数据
        listCount = 10;
      });
    });
  }
  Widget renderBottom() {
    if(this.isLoading) {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '努力加载中...',
              style: TextStyle(
                fontSize: 15,
                color: Color(0xFF111111),
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 15)),
            SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(strokeWidth: 3),
            ),
          ],
        ),
      );
    } else {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        child: Text(
          '上拉加载更多',
          style: TextStyle(
            fontSize: 15,
            color: Color(0xFF111111),
          ),
        ),
      );
    }
  }
}