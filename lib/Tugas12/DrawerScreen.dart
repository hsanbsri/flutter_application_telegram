import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Hasan"),
            currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/img/Dht22.jpg")),
            accountEmail: Text("hsan******@gmail.com"),
          ),
          DrawerListTile(
            iconData: Icons.group,
            title: 'NewGroup',
            onTilepressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.group,
            title: 'New Secret Group',
            onTilepressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.group,
            title: 'New Channel Group',
            onTilepressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.group,
            title: 'New Channel Chat',
            onTilepressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.group,
            title: 'Contacts',
            onTilepressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.group,
            title: 'Saved Message',
            onTilepressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.group,
            title: 'calls',
            onTilepressed: () {},
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onTilepressed;

  const DrawerListTile(
      {Key? key,
      required this.iconData,
      required this.title,
      required this.onTilepressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilepressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(
        title,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
