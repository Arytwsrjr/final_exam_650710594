import 'package:flutter/material.dart';

class Answer2 extends StatefulWidget {
  const Answer2({super.key});

  @override
  State<Answer2> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Answer2> {
  final _formKey = GlobalKey<FormState>();
  //final TextEditingController _priceweight = TextEditingController();
  String? _fast = 'ปกติ';
  String? _selectedItem;
  bool? _packagespe = false ;
  bool? _pragan = false ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('คำนวณค่าจัดส่ง'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: TextFormField(
                  
                  decoration: const InputDecoration(labelText: 'น้ำหนักสินค้า​ (กก.)'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'กรุณากรอกน้ำหนัก';
                    }
                    return null;
                  },
                ),
              ),
              // Email
              
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: DropdownButtonFormField<String>(
                  decoration:
                      const InputDecoration(labelText: 'เลือกระยะทาง'),
                  value: _selectedItem,
                  items: ['ในเมือง', 'ต่างจังหวัด', 'ต่างประเทศ']
                      .map((item) =>
                          DropdownMenuItem(value: item, child: Text(item)))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedItem = value; // ใช้ setState เพื่อเปลี่ยนแปลงค่า
                    });
                  },
                  validator: (value) =>
                      value == null ? 'เลือกด้วยงับ' : null,
                ),
              ),
              Row(
                children: [
                  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'บริการเสริม',
                    ),
                  ),
                ),
                  Expanded(
                    child:
                      CheckboxListTile(
                      title: const Text('แพ็คกิ้งพิเศษ(+20)'),
                      value: _packagespe,
                      onChanged: (value) {
                  setState(() {
                    _packagespe = value;
                  });
                },
              ),),
              Expanded(
                  child:
                    CheckboxListTile(
                      title: const Text('ประกัน(+50)'),
                      value: _pragan,
                    onChanged: (value) {
                      setState(() {
                        _pragan = value;
                      });
                    },
                  ),
                ),
              ]),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'เลือกความเร่งด่วน',
                      ),
                    ),
                  ),
                  Expanded(

                    child:
                    RadioListTile(
                      title: const Text('ปกติ'),
                      value: 'ปกติ',
                      groupValue: _fast,
                      onChanged: (value) {
                        setState(() {
                          _fast = value.toString();
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: RadioListTile(
                      title: const Text('ด่วน'),
                      value: 'ด่วน',
                      groupValue: _fast,
                      onChanged: (value) {
                        setState(() {
                          _fast = value.toString();
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: RadioListTile(
                      title: const Text('ด่วนพิเศษ'),
                      value: 'ด่วนพิเศษ',
                      groupValue: _fast,
                      onChanged: (value) {
                        setState(() {
                          _fast = value.toString();
                        });
                      },
                    ),
                  ),
                ],
              ),

              // Save Button
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        print('Form is valid');
                      }
                    },
                    child: const Text('คำนวณ'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Text("ค่าจัดส่งทั้งหมด ")
                ),
              
            ],
          ),
        ),
      ),
    );
  }
}
