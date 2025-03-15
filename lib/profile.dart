import 'package:final_exam_650710594/profilescreen.dart';
import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : const Text("Myself"),
        backgroundColor : const Color.fromARGB(255, 137, 147, 224)
      ),
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScfeeen()),
                );
              },
              child: Text('Myprofile'),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}