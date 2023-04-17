
import 'package:exam11/home/data%20model.dart';
import 'package:exam11/home/homeScreen.dart';
import 'package:flutter/material.dart';

class addScreen extends StatefulWidget {
  const addScreen({Key? key}) : super(key: key);

  @override
  State<addScreen> createState() => _addScreenState();
}

class _addScreenState extends State<addScreen> {

  TextEditingController txtgrid =  TextEditingController();
  TextEditingController txtname =  TextEditingController();
  TextEditingController  txtstd=  TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Screen",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
               controller: txtgrid,
              decoration: InputDecoration(
                hintText: "Enter GR ID",
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: txtname,
              decoration: InputDecoration(
                hintText: "Enter Name",
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: txtstd,
              decoration: InputDecoration(
                hintText: "Enter STD",
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(onPressed: () {
              setState(() {
                String name = txtname.text;
                String grid = txtgrid.text;
                String std = txtstd.text;
                dataModel dm = dataModel(name: name,grid: grid,std: std);
                dataList.add(dm);
                Navigator.pop(context);
              });
            }, child: Text("Submit",style: TextStyle(fontSize: 25),),),
          ],
        ),
      ),
    );
  }
}
