// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class Createpage extends StatelessWidget {
//   const Createpage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final titleController = TextEditingController();
//     final passwordController = TextEditingController();
//     final contentController = TextEditingController();
//
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: (){
//             Navigator.pop(context);
//           },
//         ),
//       ),
//       body: Column(
//         children: [
//           Container(
//             width: 300,
//             height: 150,
//             child: TextField(
//               controller: titleController,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: "Title",
//               ),
//             ),
//           ),
//           Container(
//             width: 300,
//             height: 150,
//             child: TextField(
//               controller: passwordController,
//               obscureText: true,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: "Password",
//               ),
//             ),
//           ),
//           Container(
//             width: 300,
//             height: 300,
//             child: TextField(
//               controller: contentController,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: "Content",
//               ),
//             ),
//           ),
//           ElevatedButton(
//             child: Text("submit"),
//             onPressed: (){
//               showDialog(
//                 context: context,
//                 builder: (BuildContext context) {
//                   return AlertDialog(
//                     title: Text("Alert Dialog Title"),
//                     content: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text("Title: ${titleController.text}"),
//                         Text("Password: ${passwordController.text}"),
//                         Text("Content: ${contentController.text}"),
//                       ],
//                     ),
//                     actions: [
//                       TextButton(
//                         child: Text("OK"),
//                         onPressed: () {
//                           Navigator.pop(context); // Close the dialog
//                         },
//                       ),
//                     ],
//                   );
//                 },
//               );
//             },
//           )
//         ],
//       ),
//     );
//   }
// }
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Createpage extends StatelessWidget {
  const Createpage({super.key});

  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final passwordController = TextEditingController();
    final contentController = TextEditingController();

    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 200,
            height: 200,
            child: TextField(
              controller: titleController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Title"
              ),
            ),
          ),
          Container(
            width: 200,
            height: 200,
            child: TextField(
              controller: passwordController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password"
              ),
            ),
          ),
          Container(
            width: 200,
            height: 200,
            child: TextField(
              controller: contentController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Content"
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () async {
                
                var createForm = {
                  'title': titleController.text,
                  'password': passwordController.text,
                  'content': contentController.text,
                };

                await http.post(
                  Uri.parse('http://localhost:8080/create'),
                  headers: <String, String>{
                    'Content-Type': 'application/json; charset=UTF-8',
                  },
                  body: jsonEncode(createForm),
                );
                Navigator.pop(context);
          },
              child: Text("등록하기")
          )
        ],
      ),
    );
  }
}
