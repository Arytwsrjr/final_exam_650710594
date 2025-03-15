import 'package:flutter/material.dart';

class ProfileScfeeen extends StatelessWidget {
  const ProfileScfeeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Myprofile"),
        backgroundColor: const Color.fromARGB(255, 230, 198, 102),
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Card(
          elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/IMG_6781.PNG'),
                ),
                SizedBox(height: 10),
                Text(
                  "Araya Thaworrnsirijaras",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Student",
                  style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                ),
                Text("650710594",
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.email, color: Colors.blue),
                    SizedBox(width: 5),
                    Text("Thawornsirijars_a@silpakorn.edu"),
                  ],
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
