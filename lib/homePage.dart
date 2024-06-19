// import 'package:crud_practice/createPage.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class Homepage extends StatelessWidget {
//   const Homepage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//               appBar: AppBar(
//                 title: Text('앱임'),
//                 backgroundColor: Colors.blue,
//               ),
//               body: Row(
//                 children: [
//                   ElevatedButton(
//                     child: Text("hyper link"),
//                     onPressed: (){
//                       Navigator.push(context,
//                           MaterialPageRoute(builder: (context) => Createpage()));
//                     },
//                   )
//                 ],
//               ),
//               bottomNavigationBar: BottomAppBar(
//                 child: Container(
//                   height: 70,
//                   child: const Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Icon(Icons.phone),
//                       Icon(Icons.message),
//                       Icon(Icons.contact_page)
//                     ],
//                   ),
//                 ),
//               ),
//
//     );
//   }
// }
import 'package:crud_practice/createPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.telegram),
        title: Text("Crud"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("등록하기"),
          onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => Createpage()
                ));
          },
        )
      ),
      bottomNavigationBar: BottomAppBar(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.phone),
            Icon(Icons.access_alarm),
            Icon(Icons.message)
          ],
        ),
      ),
    );
  }
}
