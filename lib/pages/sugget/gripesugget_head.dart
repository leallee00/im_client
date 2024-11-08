import 'package:flutter/material.dart';
import '../sugget/gripesugget_create.dart';


typedef void Callblock(ComplaintPageType type);

class ComplaintSuggetHeadView extends StatelessWidget{

  late Callblock block;

  ComplaintSuggetHeadView({required this.block});

  @override
  Widget build(BuildContext context){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: Row( //创建一个View容器
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 100,
            padding: EdgeInsets.only(left: 16),
            child:  ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.green),
              child: Text('建议'),
              onPressed: (){
                block(ComplaintPageType.SuggetType);
              },
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 16),
            width: 100,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.grey),
              child: Text('投诉'),
              onPressed: (){
                block(ComplaintPageType.ComplaintType);
              },
            ),
          ),
        ],
      ),
    );
  }
}
