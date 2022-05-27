
import 'package:flutter/material.dart';
import 'package:untitled/screens/setting_auto.dart';
import 'package:untitled/screens/setting_time.dart';

import 'home1.dart';


class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  State<HomePage1> createState() => _HomePage1State();
}

enum Chedo {
  man, auto, time, on, off,
}

class _HomePage1State extends State<HomePage1> {
  int selectedIndex = 0;
  final Widget _myGiamSat = const MyGiamSat();
  final Widget _myDieuKhien = const MyDieuKhien();
  final Widget _myThietLap = const MyThietLap();
  final Widget _myCamera = const MyCamera();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text('DANH SÁCH KHU VƯỜN',style: TextStyle(fontSize: 25),),
            ),
            ListTile(
              title: const Text('KHU VƯỜN 1', style: TextStyle(fontSize: 25, color: Colors.green),),
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (ctx) => const HomePage1(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('KHU VƯỜN 2', style: TextStyle(fontSize: 25,color: Colors.brown),),
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (ctx) => const HomePage2(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    backgroundColor: Colors.green[300],
     appBar: AppBar(
       backgroundColor: Colors.green,
       title: const Text("GIÁM SÁT, CHĂM SÓC CÂY TRỒNG 1", style: TextStyle(fontSize: 18),),
     ),
      body:  getBody(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        items:  const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.white,),
            label: "1.Giám sát",
            backgroundColor: Colors.white
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.control_camera, color: Colors.white,),
            label: "2.Điều khiển"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Colors.white,),
            label: "3.Thiết lập",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt, color: Colors.white,),
            label: "4.Camera",
          )
        ],
        onTap: (int index) {
          onTapHandler(index);
        },
      ),
    );
  }

  Widget getBody( )  {
    if(selectedIndex == 0) {
      return _myGiamSat;
    } else if(selectedIndex==1) {
      return _myDieuKhien;
    }
    else if(selectedIndex==2) {
      return _myThietLap;
    }else {
      return _myCamera;
    }
  }

  void onTapHandler(int index)  {
    setState(() {
      selectedIndex = index;
    });
  }
}

class MyGiamSat extends StatelessWidget {
  const MyGiamSat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(width: 10, height: 20,),
          Row(
            children: [
              const SizedBox(width: 10, height: 10,),
              Container (
                  width: 180,
                  height: 220,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 3.0,
                    ),
                  ],
                ),
                child: Column(
                  children: <Widget> [
                    Image.asset("asset/hot.png",width: 130,height: 150,),
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(33,10,10,10),
                      child: Row(
                        children: const [
                          Text("Nhiệt độ :",style: TextStyle(color: Colors.red),),
                          SizedBox(width: 10,),
                          Text("35^C",style: TextStyle(color: Colors.red),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(width: 10,),
              Container (
                width: 180,
                height: 220,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 3.0,
                    ),
                  ],
                ),
                child: Column(
                  children: <Widget> [
                    Image.asset("asset/drop.png",width: 130,height: 150,),
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(33,10,10,10),
                      child: Row(
                        children: const [
                          Text("Độ ẩm :",style: TextStyle(color: Colors.red),),
                          SizedBox(width: 10,),
                          Text("65%",style: TextStyle(color: Colors.red),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(width: 10, height: 10,),
          Row(
            children: [
              const SizedBox(width: 10, height: 10,),
              Container (
                width: 180,
                height: 220,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 3.0,
                    ),
                  ],
                ),
                child: Column(
                  children: <Widget> [
                    Image.asset("asset/plant.png",width: 130,height: 150,),
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(33,10,10,10),
                      child: Row(
                        children: const [
                          Text("Độ ẩm đất :",style: TextStyle(color: Colors.red),),
                          SizedBox(width: 10,),
                          Text("0%",style: TextStyle(color: Colors.red),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(width: 10,),
              Container (
                width: 180,
                height: 220,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 3.0,
                    ),
                  ],
                ),
                child: Column(
                  children: <Widget> [
                    Image.asset("asset/sun.png",width: 130,height: 150,),
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(33,10,10,10),
                      child: Row(
                        children: const [
                          Text("Ánh sáng :",style: TextStyle(color: Colors.red),),
                          SizedBox(width: 10,),
                          Text("44lx",style: TextStyle(color: Colors.red),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(width: 10, height: 10,),
          Row(
            children: [
              const SizedBox(width: 10, height: 10,),
              Container (
                width: 180,
                height: 220,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 3.0,
                    ),
                  ],
                ),
                child: Column(
                  children: <Widget> [
                    Image.asset("asset/rain.png",width: 130,height: 150,),
                    const SizedBox(height: 10,),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20,10,10,10),
                      child: Text("Đang mưa",style: TextStyle(color: Colors.red),),
                    )
                  ],
                ),
              ),
              const SizedBox(width: 10,),
              Container (
                width: 180,
                height: 220,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 3.0,
                    ),
                  ],
                ),
                child: Column(
                  children: <Widget> [
                    Image.asset("asset/sign.png",width: 130,height: 150,),
                    const SizedBox(height: 10,),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(15,10,10,10),
                      child: Text("Có",style: TextStyle(color: Colors.red),),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyDieuKhien extends StatelessWidget {
  const MyDieuKhien({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(width: 5, height: 20,),
          Row(
            children: [
              const SizedBox(width: 10, height: 10,),
              Container (
                width: 180,
                height: 220,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 3.0,
                    ),
                  ],
                ),
                child: Column(
                  children:  [
                    SizedBox(height: 10,),
                    const Text("Chế độ MAN", style: TextStyle(color: Colors.red,fontWeight: FontWeight.w900,fontSize: 20),),
                    FlatButton (
                      child: const Text("MAN"),
                      onPressed:(){
                      },
                      color: Colors.pinkAccent,
                      textColor: Colors.white,
                    ),
                    FlatButton (
                      child: const Text("TỰ ĐỘNG"),
                      onPressed:(){},
                      color: Colors.blue,
                      textColor: Colors.white,
                    ),
                    FlatButton (
                      child: const Text("THỜI GIAN"),
                      onPressed:(){},
                      color: Colors.grey,
                      textColor: Colors.white,
                    )
                  ],
                ),
              ),
              const SizedBox(width: 5,),
              Container (
                width: 190,
                height: 220,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 3.0,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20,10,20,10),
                      child: Row(
                        children: const [
                          Text("Bơm",style:TextStyle(color: Colors.red,fontWeight: FontWeight.w900,fontSize: 20),),
                          SizedBox(width: 60,),
                          Text("Bật",style:TextStyle(color: Colors.red,fontWeight: FontWeight.w900,fontSize: 20),)
                        ],
                      ),
                    ),
                    Image.asset("asset/water-pump.png",width: 100,height: 120,),
                    Row(
                      children:  [
                        const SizedBox(width: 3,),
                        FlatButton (
                          child: const Text("Bật"),
                          onPressed:(){},
                          color: Colors.blue,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        const SizedBox(width: 4,),
                        FlatButton (
                          child: const Text("Tắt"),
                          onPressed:(){},
                          color: Colors.red,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(width: 10, height: 10,),
          Row(
            children: [
              const SizedBox(width: 5,),
              Container (
                width: 190,
                height: 220,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 3.0,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20,10,20,10),
                      child: Row(
                        children: const [
                          Text("Sương",style:TextStyle(color: Colors.red,fontWeight: FontWeight.w900,fontSize: 20),),
                          SizedBox(width: 45,),
                          Text("TẮT",style:TextStyle(color: Colors.red,fontWeight: FontWeight.w900,fontSize: 20),)
                        ],
                      ),
                    ),
                    Image.asset("asset/dew.png",width: 100,height: 120,),
                    Row(
                      children:  [
                        const SizedBox(width: 3,),
                        FlatButton (
                          child: const Text("Bật"),
                          onPressed:(){},
                          color: Colors.blue,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        const SizedBox(width: 4,),
                        FlatButton (
                          child: const Text("Tắt"),
                          onPressed:(){},
                          color: Colors.red,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 5,),
              Container (
                width: 190,
                height: 220,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 3.0,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20,10,20,10),
                      child: Row(
                        children: const [
                          Text("Đèn",style:TextStyle(color: Colors.red,fontWeight: FontWeight.w900,fontSize: 20),),
                          SizedBox(width: 60,),
                          Text("TẮT",style:TextStyle(color: Colors.red,fontWeight: FontWeight.w900,fontSize: 20),)
                        ],
                      ),
                    ),
                    Image.asset("asset/idea.png",width: 100,height: 120,),
                    Row(
                      children:  [
                        const SizedBox(width: 3,),
                        FlatButton (
                          child: const Text("Bật"),
                          onPressed:(){},
                          color: Colors.blue,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        const SizedBox(width: 4,),
                        FlatButton (
                          child: const Text("Tắt"),
                          onPressed:(){},
                          color: Colors.red,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(width: 10, height: 10,),
          Row(
            children: [
              const SizedBox(width: 5,),
              Container (
                width: 190,
                height: 220,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 3.0,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20,10,20,10),
                      child: Row(
                        children: const [
                          Text("Mái che",style:TextStyle(color: Colors.red,fontWeight: FontWeight.w900,fontSize: 20),),
                          SizedBox(width: 30,),
                          Text("TẮT",style:TextStyle(color: Colors.red,fontWeight: FontWeight.w900,fontSize: 20),)
                        ],
                      ),
                    ),
                    Image.asset("asset/umbrella.png",width: 100,height: 120,),
                    Row(
                      children:  [
                        const SizedBox(width: 3,),
                        FlatButton (
                          child: const Text("Bật"),
                          onPressed:(){},
                          color: Colors.blue,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        const SizedBox(width: 4,),
                        FlatButton (
                          child: const Text("Tắt"),
                          onPressed:(){},
                          color: Colors.red,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 5,),
              Container (
                width: 190,
                height: 220,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 3.0,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20,10,20,10),
                      child: Row(
                        children: const [
                          Text("Cảnh Báo",style:TextStyle(color: Colors.red,fontWeight: FontWeight.w900,fontSize: 20),),
                          SizedBox(width: 20,),
                          Text("TẮT",style:TextStyle(color: Colors.red,fontWeight: FontWeight.w900,fontSize: 20),)
                        ],
                      ),
                    ),
                    Image.asset("asset/alarm.png",width: 100,height: 120,),
                    Row(
                      children:  [
                        const SizedBox(width: 3,),
                        FlatButton (
                          child: const Text("Bật"),
                          onPressed:(){},
                          color: Colors.blue,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        const SizedBox(width: 4,),
                        FlatButton (
                          child: const Text("Tắt"),
                          onPressed:(){},
                          color: Colors.red,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyThietLap extends StatelessWidget {
  const MyThietLap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(120,10,10,0),
      child: Column(
          children: [
      ElevatedButton (
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const SettingTime()));
      },
          style: ButtonStyle(
            backgroundColor:
              MaterialStateProperty.all<Color>(Colors.green)
          ),
      child: const Text("Cài đặt thời gian tưới")),
      ElevatedButton (
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const SettingAuto()));
      },
          style: ButtonStyle(
              backgroundColor:
              MaterialStateProperty.all<Color>(Colors.green)
          ),
      child:const Text("Cài đặt chế độ tự động")
      )
        ],
      ),
    );
  }
  }

 class MyCamera extends StatelessWidget {
   const MyCamera({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return Container();
   }
 }

