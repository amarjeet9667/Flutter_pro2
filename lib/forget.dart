import 'package:flutter/material.dart';
class MyForget extends StatefulWidget{
  const MyForget({Key? key}) : super (key: key);
  @override
  _MyForgetState createState()=> _MyForgetState();
}
class _MyForgetState extends State<MyForget>{
  @override
  Widget build(BuildContext context){
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: Text(
            'Home',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
        body: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(left:10, top: 30),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text('* Set New Password',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    obscureText: true,
                    style: TextStyle(
                      color: Colors.black,),
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Enter New Password',
                      prefixIcon: Icon(Icons.lock),
                      prefixIconColor: Colors.grey.shade100,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    obscureText: true,
                    style: TextStyle(
                      color: Colors.black,),
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Re-Enter Password',
                      prefixIcon: Icon(Icons.lock),
                      prefixIconColor: Colors.grey.shade100,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  OutlinedButton(onPressed: (){
                    Navigator.pushNamed(context, 'MainActivity');
                  },
                    child: Text(
                      'Finish',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(Size(150, 40)),
                      backgroundColor: MaterialStateProperty.all(Colors.deepPurpleAccent),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}