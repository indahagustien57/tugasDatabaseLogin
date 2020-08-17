import 'package:flutter/material.dart';

import './my_home_page.dart';
import './widgets/stack_container.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoard createState() => _DashBoard();
}

class _DashBoard extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        children: [
          StackContainer(),
          Card(
            color: Colors.amber[200],
            elevation: 15.0,
            child: Row(
              children: [
                IconButton(icon: Icon(Icons.class_), onPressed: () {}),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'KELAS',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('Flutter Mobile Development')
                  ],
                )
              ],
            ),
          ),
          Card(
            color: Colors.amber[200],
            elevation: 15.0,
            child: Row(
              children: [
                IconButton(icon: Icon(Icons.calendar_today), onPressed: () {}),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'PERIODE',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('Agustus - Oktober 2020')
                  ],
                )
              ],
            ),
          ),
          Card(
            color: Colors.amber[200],
            elevation: 15.0,
            child: Row(
              children: [
                IconButton(icon: Icon(Icons.email), onPressed: () {}),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'EMAIL',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('indah.agustien57@gmail.com')
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 50.0),
          MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Colors.green[300],
            elevation: 15,
            child: Text("LOG OUT"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyHomePage()));
            },
          ),
        ],
      ),
    );
  }
}
