
import 'package:flutter/material.dart';
import 'package:untitled/screens/setting_auto.dart';
import 'package:untitled/screens/setting_time.dart';
import 'home.dart';


class HomePage2 extends StatefulWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  State<HomePage2> createState() => _HomePage2State();
}

enum Chedo {
  man, auto, time, on, off,
}

class _HomePage2State extends State<HomePage2> {
  int selectedIndex = 0;
  final Widget _myContacts = const MyContacts();
  final Widget _myEmails = const MyEmails();
  final Widget _myProfile = const MyProfile();
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
                color: Colors.brown,
              ),
              child: Text('DANH SÁCH KHU VƯỜN',style: TextStyle(fontSize: 25),),
            ),
            ListTile(
              title: const Text('KHU VƯỜN 1', style: TextStyle(fontSize: 25),),
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (ctx) => const HomePage1(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('KHU VƯỜN 2', style: TextStyle(fontSize: 25),),
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
      backgroundColor: Colors.brown[300],
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text("GIÁM SÁT, CHĂM SÓC CÂY TRỒNG 2", style: TextStyle(fontSize: 18),),
      ),
      body:  getBody(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.brown,
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
      return _myContacts;
    } else if(selectedIndex==1) {
      return _myEmails;
    }
    else if(selectedIndex==2) {
      return _myProfile;
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

class MyContacts extends StatelessWidget {
  const MyContacts({Key? key}) : super(key: key);

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

class MyEmails extends StatelessWidget {
  const MyEmails({Key? key}) : super(key: key);

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
                    const SizedBox(height: 10,),
                    const Text("Chế độ MAN", style: TextStyle(color: Colors.red,fontWeight: FontWeight.w900,fontSize: 20),),
                    FlatButton (
                      onPressed:(){
                      },
                      color: Colors.pinkAccent,
                      textColor: Colors.white,
                      child: const Text("MAN"),
                    ),
                    FlatButton (
                      onPressed:(){},
                      color: Colors.blue,
                      textColor: Colors.white,
                      child: const Text("TỰ ĐỘNG"),
                    ),
                    FlatButton (
                      onPressed:(){},
                      color: Colors.grey,
                      textColor: Colors.white,
                      child: const Text("THỜI GIAN"),
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
                          onPressed:(){},
                          color: Colors.blue,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: const Text("Bật"),
                        ),
                        const SizedBox(width: 4,),
                        FlatButton (
                          onPressed:(){},
                          color: Colors.red,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: const Text("Tắt"),
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
                          onPressed:(){},
                          color: Colors.blue,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: const Text("Bật"),
                        ),
                        const SizedBox(width: 4,),
                        FlatButton (
                          onPressed:(){},
                          color: Colors.red,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: const Text("Tắt"),
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
                          onPressed:(){},
                          color: Colors.red,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: const Text("Tắt"),
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
                          onPressed:(){},
                          color: Colors.blue,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: const Text("Bật"),
                        ),
                        const SizedBox(width: 4,),
                        FlatButton (
                          onPressed:(){},
                          color: Colors.red,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: const Text("Tắt"),
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
                          onPressed:(){},
                          color: Colors.blue,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: const Text("Bật"),
                        ),
                        const SizedBox(width: 4,),
                        FlatButton (
                          onPressed:(){},
                          color: Colors.red,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: const Text("Tắt"),
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

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

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
                  MaterialStateProperty.all<Color>(Colors.brown)
              ),
              child: const Text("Cài đặt thời gian tưới")),
          ElevatedButton (
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const SettingAuto()));
              },
              style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.brown)
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

