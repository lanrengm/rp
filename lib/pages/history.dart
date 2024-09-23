import 'package:flutter/material.dart';

class Overview extends StatefulWidget {
  const Overview({super.key});

  @override
  State<Overview> createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  @override
  Widget build(BuildContext context) {
    var _appBar = AppBar(
      title: Text("概览"),
      centerTitle: true,
    );

    return Scaffold(
      appBar: _appBar,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Group(),
          ],
        ),
      ),
    );
  }
}

class Group extends StatelessWidget {
  const Group({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10,10,10,0),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('1 App09808709870987',
                    style: TextStyle(
                        color: Colors.yellow.shade700
                    ),
                  ),
                  Text('查看详情',
                    style: TextStyle(
                      color: Colors.grey.shade500,
                    ),
                  ),
                ],
              ),
              Divider(),
              Row(
                children: [
                  Icon(Icons.person,color: Colors.blue,),
                  Text('报修人: ',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                    ),
                  ),
                  Text('陈为东')
                ],
              ),
              Row(
                children: [
                  Icon(Icons.house,color: Colors.greenAccent,),
                  Text('部门: ',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                    ),
                  ),
                  Text('IT 部')
                ],
              ),
              Row(
                children: [
                  Icon(Icons.phone_android,color: Colors.green,),
                  Text('电话: ',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                    ),
                  ),
                  Text('6666668888'),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.location_on,color: Colors.brown,),
                  Text('地点: ',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                    ),
                  ),
                  Text('一楼IT部')
                ],
              ),
              Row(
                children: [
                  Icon(Icons.construction_outlined,color: Colors.red,),
                  Text('故障描述: ',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                    ),
                  ),
                  Text('墙上插座损坏，无法通电，需要更换')
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('提交时间: ',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                    ),
                  ),
                  Text('2024 - 06 - 06',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
