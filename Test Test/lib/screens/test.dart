import 'package:busgo/admin/admin_screen.dart';
import 'package:busgo/authentication/auth_form.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../api.dart';
import 'dart:convert';

class Query extends StatefulWidget {
  State<Query> createState() => QueryState();
}

class QueryState extends State<Query> {
  static const routeName = "/qeury";
  @override
  Widget build(BuildContext context) {
    dynamic url =
        "http://192.168.43.133:5000/predict?Date=02/04/2022&CodedDay=7&Zone=5&Weather=16&Temperature=12.1&Rain=1&Holiday=0";
    var Data;
    String QueryText = 'QUERY';

    return Scaffold(
      body:  ListView(
        children: [
          TextField(
                    // onChanged: (value) {
                    //   url = 'http://127.0.0.1:9000/predict?Date=' + value.toString();
                    // },
                    decoration: InputDecoration(
                        hintText: 'Search Anything Here',
                        suffixIcon: GestureDetector(
                            // behavior: HitTestBehavior.translucent,
              
                            onTap: () async {
                              Data = await Getdata(url);
                              var DecodedData = jsonDecode(Data);
                              setState(() {
                                QueryText = DecodedData;
                              });
                            },
                            child: Icon(Icons.search))),
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        Data = await Getdata(url);
                        var DecodedData = jsonDecode(url);
                        // print("Decoded is "+DecodedData);
                        
                        setState(() {
                        
                          QueryText = DecodedData['data'];
                        });
                      },
                      child: Text('Search')
                      ),
                      Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                QueryText.toString(),
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ), //Text
            ),
        ], 
      
      
      )
    );
    // MaterialApp
  }
}

