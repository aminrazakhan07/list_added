// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';

import 'package:todos_app/todos_app.dart';

// class About_page extends StatelessWidget {
//   final Map studentData;
//   About_page({required this.studentData});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Student Datas'),
//       ),
//       body: Container(
//         padding: EdgeInsets.only(left: 5),
//         child: Column(
//           children: [
//             Text(studentData['name'], style: TextStyle(fontSize: 20.0)),
//             Text(studentData['course'], style: TextStyle(fontSize: 20.0)),
//             Text(studentData['sec'], style: TextStyle(fontSize: 20.0)),
//           ],
//         ),
//       ),
//     );
//   }
// }

class about_Std extends StatelessWidget {
  final Map studentData;
  const about_Std({super.key, required this.studentData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Info'),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          color: Colors.amber,
          height: 160,
          child: Center(
            child: Column(
              children: [
                Text(
                  'Name: ${studentData['name']}',
                  style: TextStyle(fontSize: 22),
                ),
                Text(
                  'Course: ${studentData['course']}',
                  style: TextStyle(fontSize: 22),
                ),
                Text(
                  'Sec: ${studentData['sec']}',
                  style: TextStyle(fontSize: 22),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
