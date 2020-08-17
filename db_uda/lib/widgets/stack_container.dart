import 'package:flutter/material.dart';
import 'package:db_uda/utils/custom_clipper.dart';

class StackContainer extends StatelessWidget {
  const StackContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Stack(
        children: [
          ClipPath(
            clipper: MyCustomClipper(),
            child: Container(
              height: 200.0,
              color: Colors.green[300],
            ),
          ),
          Align(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/indah3.png'),
                  radius: 70.0,
                ),
                SizedBox(height: 4.0),
                Text(
                  "Indah Agustien",
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Mobile Apps Developer",
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
