import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';


class MyLoginp extends StatefulWidget{
  const MyLoginp({Key? key}) : super (key: key);
  @override

  _MyLoginpState createState()=> _MyLoginpState();
}
class _MyLoginpState extends State<MyLoginp>{

  late SharedPreferences logindata;
  late String email;

  @override
  void initState(){
    super.initState();
    initial();
  }

  void initial()async{
    logindata = await SharedPreferences.getInstance();
    setState(() {
      email = logindata.getString('username')!;
    });

  }

  @override
  Widget build(BuildContext context){
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: Text(
            'Login......',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),

        body: Stack(
          children: [
            SizedBox(
              height: 50,
            ),
            Text('Login Successfull..............',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Center(
              child: OutlinedButton(onPressed: (){
                logindata.setBool('login', true);
                Navigator.pushNamed(context, 'MainActivity');
              },
                child: Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size(120, 40)),
                  backgroundColor: MaterialStateProperty.all(Colors.deepPurpleAccent),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)
                  ),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}