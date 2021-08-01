import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:MyFormPage() ,
    );
  }
}

class MyFormPage extends StatefulWidget {
  const MyFormPage({Key? key}) : super(key: key);

  @override
  _MyFormPageState createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Binit Shrestha Login Portal',
        textAlign: TextAlign.center,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        height: 50,
        width: 50,
        color: Colors.deepOrange,
      ),
    );
  }
}

