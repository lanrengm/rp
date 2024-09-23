import 'package:flutter/material.dart';
import 'package:cie/login.dart' as login;

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我的资料"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // DrawerHeader(),
          DrawerBody(),
        ],
      ),
    );
  }
}

class DrawerHeader extends StatelessWidget {
  const DrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(
      accountName: const Text('月虽缺'),
      accountEmail: const Text('8888'),
      currentAccountPicture: const CircleAvatar(
        backgroundImage: NetworkImage('https://profile-avatar.csdnimg.cn/767014e8a90444569a1b256cb7e8d746_lanren_007.jpg'),
      ),
      decoration: BoxDecoration(
        color: Colors.blue.shade600,
      ),
    );
  }
}

class DrawerBody extends StatefulWidget {
  const DrawerBody({super.key});

  @override
  State<DrawerBody> createState() => _DrawerBodyState();
}

class _DrawerBodyState extends State<DrawerBody> {

  void enterLogin(context) {
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) {
          return login.Login();
        }), (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            onTap: () {},
            leading: Icon(Icons.person_outline),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('姓名'),
                Text('Bob')
              ],
            ),
            tileColor: Colors.white,
          ),
          ListTile(
            onTap: () {},
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('ID'),
                Text('8888'),
              ],
            ),
            leading: Icon(Icons.numbers_outlined),
            tileColor: Colors.white,
          ),
          ListTile(
            onTap: () {},
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('部门'),
                Text('工程部')
              ],
            ),
            leading: Icon(Icons.sensor_door_outlined),
            tileColor: Colors.white,
          ),
          ListTile(
            onTap: () {},
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('电话'),
                Text('666666888888')
              ],
            ),
            leading: Icon(Icons.phone_outlined),
            tileColor: Colors.white,
          ),
          SizedBox(height: 20,),
          ListTile(
            onTap: () => enterLogin(context),
            title: Text('退出登录', style: TextStyle(color: Colors.red,),),
            trailing: Icon(Icons.logout_outlined, color: Colors.red,),
            tileColor: Colors.white,
          ),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}
