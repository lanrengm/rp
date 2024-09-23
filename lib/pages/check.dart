import 'package:flutter/material.dart';
import 'package:cie/pages/check/report.dart' as report;

class Check extends StatefulWidget {
  const Check({super.key});

  @override
  State<Check> createState() => _CheckState();
}

class _CheckState extends State<Check> {
  void enterReport(context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) {
          return report.Report();
        }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("待办事项"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => enterReport(context),
              child: Text("报修入口",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 20,
                ),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(60),
                foregroundColor: Colors.white,
                backgroundColor: Color(0xffd43030),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
