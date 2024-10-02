import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.deepPurpleAccent,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              'Flutter Tips',
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text(
              'build your career with Eslam Mohsen',
              style: TextStyle(color: Colors.black),
            ),
            trailing: Icon(
              Icons.delete,
              color: Colors.black,
            ),
          ),
          Text(
            'Oct28 , 1999',
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
