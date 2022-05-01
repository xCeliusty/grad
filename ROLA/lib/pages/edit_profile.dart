import 'package:flutter/material.dart';
import 'package:busgo/drawer/drawer.dart';
import 'package:flutter/material.dart';


class Editprofile extends StatefulWidget {
  static const routeName = "/dashboard";
  const Editprofile({Key? key}) : super(key: key);


  @override
  _EditprofileState createState() => _EditprofileState();
}
const routeName = "/Editprofile";

class _EditprofileState extends State<Editprofile> {
  var size,height,width;
  static const routeName = "/dashboard";
  @override
  Widget build(BuildContext context) {
    // getting the size of the window
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
 
    return Scaffold(
      drawer: AppDrawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Edit Profile'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        //decoration: BoxDecoration(color: Colors.green),
        //margin: EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 0),
        //height: height/2,//half of the height size
       // width: width/2,
       width:MediaQuery.of(context).size.width,
       height:MediaQuery.of(context).size.height,
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          //mainAxisSize: MainAxisSize.max,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ClipRRect(
                  borderRadius: new BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/person2.jpg',
                    height: 80,
                  ),
                ),
              ),
            ),
            //1
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 260),
                  child: Text(
                    'Name',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
                TextField(
                  readOnly: false,
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    // fillColor: Colors.white, //background of phonenumber
                    //filled: true, // To set background to light grey
                    hintText: "Enter Your Name",
                  ),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    height: 0.01,

                    //width:
                  ),
                ),
              ],
            ),
            //2
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 260),
                  child: Text(
                    'Email',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
                TextField(
                  readOnly: false,
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    fillColor: Colors.white,
                    filled: true, // To set background to light grey
                    hintText: "Add Your Email",
                    suffixIcon: IconButton(
                      onPressed: null,
                      icon: Icon(Icons.create_outlined),
                    ),
                  ),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white),
                ),
              ],
            ),
            //3
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 200),
                  child: Text(
                    'Phone Number',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
                TextField(
                  readOnly: false,
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    fillColor: Colors.white,
                    filled: true, // To set background to light grey
                    hintText: "+201113534567",
                    suffixIcon: IconButton(
                      onPressed: null,
                      icon: Icon(Icons.create_outlined),
                    ),
                  ),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white),
                ),
              ],
            ),
            //4
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 250),
                  child: Text(
                    'Language',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
                TextField(
                  readOnly: false,
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    fillColor: Colors.white,
                    filled: true, // To set background to light grey
                    hintText: "English",
                    suffixIcon: IconButton(
                      onPressed: null,
                      icon: Icon(Icons.create_outlined),
                    ),
                  ),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white),
                ),
                ButtonBar(
                  children: [
                    //  TextButton(onPressed: () {}, child: Text("Cancle")),
                    ElevatedButton(
                      onPressed: () {
                        // Navigator.pushNamed(context, '/DriverDetails1');
                        Navigator.pushNamed(context, '/FromTo');
                      },
                      child: Text("Confirm"),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
