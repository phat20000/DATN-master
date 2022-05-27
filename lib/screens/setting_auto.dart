import 'package:flutter/material.dart';

class SettingAuto extends StatefulWidget {
  const SettingAuto({Key? key}) : super(key: key);

  @override
  State<SettingAuto> createState() => _SettingAutoState();
}

class _SettingAutoState extends State<SettingAuto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
            "Cài chế độ tự động"
        ),
      ),
        body: Column(
          children: [
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nhiệt độ trên',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nhiệt độ dưới',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Độ ẩm đất',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Ánh sáng',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(65, 10, 30, 15),
              child: Row(
                children:  [
                  const SizedBox(width: 3,),
                  FlatButton (
                    onPressed:(){},
                    color: Colors.blue,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: const Text("Cập Nhật"),
                  ),
                  const SizedBox(width: 85,),
                  FlatButton (
                    onPressed:(){},
                    color: Colors.red,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: const Text("Hủy"),
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }
}
