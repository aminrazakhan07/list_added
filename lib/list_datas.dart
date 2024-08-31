// ignore_for_file: prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todos_app/about.dart';

// class List_Datas extends StatefulWidget {
//   const List_Datas({super.key});

//   @override
//   State<List_Datas> createState() => _List_DatasState();
// }

// class _List_DatasState extends State<List_Datas> {
//   List stdinfo = [
//     {'name': 'Ali', 'course': 'AI', 'sec': 'A'},
//     {'name': 'Bilal', 'course': 'Data analysis', 'sec': 'A'},
//     {'name': 'Danish', 'course': 'Flutter', 'sec': 'B'},
//     {'name': 'Ejaz', 'course': 'Web dev', 'sec': 'B'}
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.builder(
//         itemCount: stdinfo.length,
//         itemBuilder: (context, index) {
//           return Container(
//             padding: EdgeInsets.only(bottom: 6),
//             child: ListTile(
//               onTap: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => About_page(
//                         studentData: stdinfo[index],
//                       ),
//                     ));
//               },
//               tileColor: Colors.amber,
//               title: Text(stdinfo[index]['name']!),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
class StudentsList extends StatefulWidget {
  const StudentsList({super.key});

  @override
  State<StudentsList> createState() => _StudentsListState();
}

class _StudentsListState extends State<StudentsList> {
  List studentInfo = [
    {'name': 'Ali', 'course': 'AI', 'sec': 'A'},
    {'name': 'Babar', 'course': 'Data analysis', 'sec': 'A'},
    {'name': 'Danish', 'course': 'Web dev', 'sec': 'B'},
    {'name': 'Ejaz', 'course': 'App dev', 'sec': 'B'},
    {'name': 'Faheem', 'course': 'Ms office', 'sec': 'C'}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: studentInfo.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.only(bottom: 6),
            child: ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => about_Std(
                              studentData: studentInfo[index],
                            )));
              },
              tileColor: Colors.amber,
              title: Text(studentInfo[index]['name']),
            ),
          );
        },
      ),
    );
  }
}
