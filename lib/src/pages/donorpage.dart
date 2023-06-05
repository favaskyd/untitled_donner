import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DonorPage extends StatefulWidget {
  const DonorPage({super.key});

  @override
  State<DonorPage> createState() => _DonorPageState();
}

class _DonorPageState extends State<DonorPage> {
  final bloodGroup  =["A+","B+","AB-","AB+","A-","B-","A-","0-","0+"];
  String ? selectedGroup;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Donate Update"),
        backgroundColor: Colors.red,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    labelText:"Donor Name" ,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(25))),
              ),
              SizedBox(height: 30),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText:"Phone Number" ,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(25))),
              ),
              SizedBox(height: 30),
              DropdownButtonFormField(
                  decoration:InputDecoration(
                      labelText:"Select Blood Group" ,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(25))),
                  items:  bloodGroup.map((e) => DropdownMenuItem(
                    child: Text(e),value: e,
                  )).toList() ,
                  onChanged: (val){
                    selectedGroup=val as String?;
                  }),
              SizedBox(height: 50),
              ElevatedButton(onPressed: (){},

                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(
                          Size(double.infinity,50)),
                      backgroundColor: MaterialStateProperty.all(Colors.red)),
                  child: Text("Submit") )
            ],

          ),
        ),
      ),
    );
  }
}
