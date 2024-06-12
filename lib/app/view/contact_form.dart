import 'package:flutter/material.dart';

class ContactForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Novo Contato'),
        backgroundColor: Color.fromARGB(255, 213, 189, 255),
      ),
    );
  }
}