import 'package:exam11/home/data%20model.dart';
import 'package:flutter/material.dart';

List<dataModel> dataList = [];
TextEditingController txtaddname = TextEditingController();
TextEditingController txtaddgrid = TextEditingController();
TextEditingController txtaddstd = TextEditingController();
class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        title: Text(
          "App Bar",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.pushNamed(context, "addScreen")
              .then((value) => setState(() {}));
        },
        child: Container(
            height: 50,
            width: 50,
            child: Icon(Icons.add, color: Colors.white),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.black)),
      ),
      body: ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          return ListTile(
            hoverColor: Colors.black,
            focusColor: Colors.black,
            title: Text("${dataList[index].name}",style: TextStyle(color: Colors.white),),
            leading: Text("${dataList[index].grid}",style: TextStyle(color: Colors.white),),
            subtitle: Text("${dataList[index].std}",style: TextStyle(color: Colors.white),),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(onTap: () {
                  setState(() {
                    dataList.removeAt(index);
                  });
                },child: Icon(Icons.delete,color: Colors.white)),
                SizedBox(width: 10),
                InkWell(onTap: () {
                  showDialog(context: context, builder: (context) {
                    return Dialog( child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextField(controller: txtaddname=TextEditingController(text: "${dataList[index].name}"),),
                          SizedBox(height: 15),

                          TextField(controller: txtaddgrid=TextEditingController(text: "${dataList[index].grid}"),),
                          SizedBox(height: 15),

                          TextField(controller: txtaddstd=TextEditingController(text: "${dataList[index].std }"),),
                          SizedBox(height: 35),
                          ElevatedButton(onPressed: (){
                            setState(() {
                              dataList[index].name=txtaddname.text;
                              dataList[index].grid=txtaddgrid.text;
                              dataList[index].std=txtaddstd.text;
                              Navigator.pop(context);
                            });
                          }, child: Text("Update"),),
                        ],
                      ),
                    ),);
                  },);
                },child: Icon(Icons.edit,color: Colors.white)),
              ],
            ),
            tileColor: Colors.black,
          );
        },
      ),
    );
  }
}
