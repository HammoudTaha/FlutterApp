import 'package:flutter/material.dart';
import 'package:hammoud/database/sqflite_db.dart';
import 'package:hammoud/view/noteapp_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const NotesApp(),
    );
  }
}


// Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.amber,
//           title: const Text("SQFLITE"),
//         ),
//         body: ListView(
//           children: [
//             MaterialButton(
//               onPressed: () async {
//                 List<Map> list =
//                     await databse.readInformation("SELECT * FROM 'user'");

//                 print(list);
//               },
//               color: Colors.red,
//               child: const Text(
//                 'READ',
//                 style: TextStyle(fontSize: 30),
//               ),
//             ),
//             MaterialButton(
//               onPressed: () async {
//                 List list =
//                     await databse.insertInformation('User', {'name': 'pppppp'});
//                 print(list);
//               },
//               color: Colors.red,
//               child: const Text(
//                 'INSERT',
//                 style: TextStyle(fontSize: 30),
//               ),
//             ),
//             MaterialButton(
//               onPressed: () async {
//                 int response = await databse.updataInformation(
//                     "UPDATE User SET name = 'Ali' WHERE id = 3");
//                 print(response);
//               },
//               color: Colors.red,
//               child: const Text(
//                 'UPDAE',
//                 style: TextStyle(fontSize: 30),
//               ),
//             ),
//             MaterialButton(
//               onPressed: () async {
//                 int response = await databse
//                     .deleteInformation("DELETE FROM User WHERE id = 1");
//                 print(response);
//               },
//               color: Colors.red,
//               child: const Text(
//                 'DELETE',
//                 style: TextStyle(fontSize: 30),
//               ),
//             ),
//           ],
//         ),
//       ),
    