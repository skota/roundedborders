import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Rounded Edges"),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              TextField(
                onChanged: (data) {},
                decoration: InputDecoration(
                  labelText: "Textfield without rounded border",
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                onChanged: (data) {},
                decoration: InputDecoration(
                    labelText: "TexField with rounded border",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                height: 100.0,
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                child: Text("Container with rounded border"),
              ),
              SizedBox(
                height: 20.0,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset('images/fish.jpg'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
