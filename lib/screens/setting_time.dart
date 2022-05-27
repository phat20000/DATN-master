

import 'package:flutter/material.dart';

class SettingTime extends StatefulWidget {
  const SettingTime({Key? key}) : super(key: key);

  @override
  State<SettingTime> createState() => _SettingTimeState();
}

class _SettingTimeState extends State<SettingTime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Cài thời gian tưới",
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10,),
          const Text("Thời gian tưới lần 1"),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Từ:',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Đến:',
                  ),
                ),
              ),
          const Text("Thời gian tưới lần 2"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
            child: TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Từ:',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
            child: TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Đến:',
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
      ),
    );
  }
}
