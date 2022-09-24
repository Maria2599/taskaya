import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  Settings({Key? key}) : super(key: key);

  List settings = [
    "FAG",
    "Terms & Conditions",
    "Our Partners",
    "Support",
    "Log out"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text("Settings", style: TextStyle(
            color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.bold),),
      ),
      body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView.separated(
              itemBuilder: (context, index) => terms(settings[index]),
              separatorBuilder: (context, index) => Divider(height: 30.0, thickness: 2),
              itemCount: settings.length)

      ),
    );
  }
}

Widget terms(String settings) {
  return Column(
    children: [
      Row(
        children: [
          Expanded(child: Text(
              settings, style: TextStyle(color: Colors.black, fontSize: 20.0))),
          IconButton(onPressed: () {},
            icon: Icon(Icons.arrow_forward_ios),
            padding: EdgeInsets.zero,)
        ],
      ),



    ],
  );
}