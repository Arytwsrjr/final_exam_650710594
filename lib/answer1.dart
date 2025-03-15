import 'package:flutter/material.dart';

class Profilecrate extends StatelessWidget {
  const Profilecrate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("โปรไฟล์ผู้ใช้"),
        backgroundColor: Colors.blue,
      ),
      body:Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 20),
            ),
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/IMG_6781.PNG'),
          ),
          SizedBox(height: 10),
          Text(
            "ชื่อผู้ใช้ : John Doe",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            "อีเมล : johndoe@example.com",
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          ListTile(
            leading: Icon(Icons.settings,color: Colors.blue,),
            title: Text("การตั้งค่า"),
            onTap: () {},
            contentPadding: EdgeInsets.only(left: 100),
          ),
          ListTile(
            leading: Icon(Icons.lock,color: Colors.blue,),
            title: Text(" เปลี่ยนรหัสผ่าน"),
            onTap: () {},
            contentPadding: EdgeInsets.only(left: 97),
            ),
          ListTile(
            leading: Icon(Icons.question_mark,color: Colors.blue,),
            title: Text("ความเป็นส่วนตัว"),
            onTap: () {},
            contentPadding: EdgeInsets.only(left: 95),
          ),
          Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: SizedBox(
                  
                  child: ElevatedButton(
                    onPressed: () {
                      
                      }
                    ,
                    style: ElevatedButton.styleFrom(
                    textStyle:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                    child: const Text('แก้ไขโปรไฟล์'),
                  ),
                )
                ),
                Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: SizedBox(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    textStyle:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text('ออกจากระบบ'),
                ),
              )),
        ],),
        
      );
    
  }
}
