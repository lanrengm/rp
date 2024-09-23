import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Report extends StatefulWidget {
  const Report({super.key});

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: const Text('故障报修'),
      centerTitle: true,
    );

    final fix = Group(
      children: [
        Title(title:'故障描述'),
        SizedBox(height: 10,),
        InputText(title: '维修地点', hint: '故障地点',),
        SizedBox(height: 10,),
        Container(
          // padding: EdgeInsets.symmetric(horizontal: 20),
          child: TextFormField(
            maxLines: 5,
            // textAlign: TextAlign.end,
            decoration: InputDecoration(
              // labelText: "故障描述",
              hintText: "故障描述",
              // border: InputBorder.none,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              // border: UnderlineInputBorder(),
              // prefixIcon: Padding(
              //   padding: EdgeInsets.symmetric(horizontal:20),
              //   child: Text("故障描述"),
              // ),
              prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
              suffixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
              ),
              filled: true,
              fillColor: Colors.white,
            ),
          ),
        ),
        SizedBox(height: 10,),
        InputText(title: '维修部门', hint: '负责维修的部门',),
      ],
    );

    final report = Group(
      children: [
        Title(title: "报修人",),
        SizedBox(height: 10,),
        InputText(title: '报修人', hint: '报修人',),
      ],
    );

    final body = Container(
      padding: EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              fix,
              SizedBox(height: 10,),
              report,
              SizedBox(height: 10,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(40), // fromHeight use double.infinity as width and 40 is the height
                ),
                onPressed: (){},
                child: Text('提交'),
              ),
            ],
          ),
        ),
      ),
    );
    
    return Scaffold(
      appBar: appBar,
      body: body,
    );
  }
}

class Title extends StatelessWidget {
  final String title;
  const Title({super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}

class Line extends StatelessWidget {
  const Line({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.5,
      child: Row(
        children: [
          SizedBox(width: 20,),
          Expanded(
              child: Container(
                height: 0.5,
                color: Colors.grey,
              )
          ),
          SizedBox(width: 20,),
        ],
      ),
    );
  }
}

class InputText extends StatelessWidget {
  final String title;
  final String hint;
  const InputText({super.key,
    required this.title,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // textAlign: TextAlign.end,
      decoration: InputDecoration(
        hintText: hint,
        // border: InputBorder.none,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        // border: OutlineInputBorder(),
        isDense: true,
        // prefixIcon: Padding(
        //   padding: EdgeInsets.symmetric(horizontal:20),
        //   child: Text(title),
        // ),
        prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
        // suffixIcon: Padding(
        //   padding: EdgeInsets.symmetric(horizontal: 20),
        // ),
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }
}

class Group extends StatelessWidget {
  final children;
  const Group({super.key,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: children,
        ),
      ),
    );
  }
}

