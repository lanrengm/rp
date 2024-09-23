import 'package:flutter/material.dart';

import 'package:cie/pages/root.dart' as root;

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  void enterRoot(context) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) {
        return root.Root();
      }),
      (route) => false,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("报修助手",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 5,
              ),
            ),
            SizedBox(height: 60,),
            TextField(
              textAlign: TextAlign.end,
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text("用户 ID："),
                ),
                prefixIconConstraints: BoxConstraints(minHeight: 0, minWidth: 0),
                hintText: "用户 ID",
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                filled: true,
                fillColor: Colors.white,
                isCollapsed: true,
                contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              textAlign: TextAlign.end,
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text("密码："),
                ),
                prefixIconConstraints: BoxConstraints(minHeight: 0, minWidth: 0),
                hintText: "密码",
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                filled: true,
                fillColor: Colors.white,
                isCollapsed: true,
                contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              ),
            ),
            SizedBox(height: 60,),
            ElevatedButton(
              onPressed: () => enterRoot(context),
              child: Text("登录",
                style: TextStyle(
                  letterSpacing: 20,
                ),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(40),
                backgroundColor: Color(0xff2a82e4),
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
