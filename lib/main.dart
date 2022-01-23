import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Data Sheet'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: DataTable(
                    columns: [
                      DataColumn(label: Text('Name',
                        style: TextStyle(fontSize: 30, backgroundColor: Colors.grey, fontWeight: FontWeight.bold,),),),
                      DataColumn(label: Text('Age',
                        style: TextStyle(fontSize: 30, backgroundColor: Colors.grey, fontWeight: FontWeight.bold,),),),
                      DataColumn(label: Text('Proffesion',
                        style: TextStyle(fontSize: 30, backgroundColor: Colors.grey, fontWeight: FontWeight.bold,),),),
                      DataColumn(label: Text('Mobile',
                        style: TextStyle(fontSize: 30, backgroundColor: Colors.grey, fontWeight: FontWeight.bold,),),),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Text('Shawon')),
                        DataCell(Text('23')),
                        DataCell(Text('Civil Engineer')),
                        DataCell(Text('01763835714')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Eamin')),
                        DataCell(Text('23')),
                        DataCell(Text('Architect')),
                        DataCell(Text('01571147937')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Rony')),
                        DataCell(Text('23')),
                        DataCell(Text('Frelancer')),
                        DataCell(Text('01782787406')),
                      ]),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),

    );
  }
}
