import 'package:flutter/material.dart';
import 'package:flutter_application_telegram/Tugas12/DrawerScreen.dart';
import 'package:flutter_application_telegram/Tugas12/Models/Chart_Model.dart';

class telegram extends StatefulWidget {
  const telegram({super.key});

  @override
  State<telegram> createState() => _telegramState();
}

class _telegramState extends State<telegram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Telepati',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF65a9e0),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
        ],
      ),
      drawer: DrawerScreen(),
      body: ListView.separated(
          itemBuilder: (ctx, i) {
            return ListTile(
              leading: CircleAvatar(
                radius: 28,
                backgroundImage: NetworkImage(items[i].profileUrl ?? ''),
              ),
              title: Text(
                items[i].name ?? '',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(items[i].message ?? ''),
              trailing: Text(items[i].time ?? ''),
            );
          },
          separatorBuilder: (ctx, i) {
            return Divider();
          },
          itemCount: items.length),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.create, color: Colors.white),
        backgroundColor: Color(0xFF65a9e0),
        onPressed: () {},
      ),
    );
  }
}
