import 'package:flutter/material.dart';

class SubDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SubDetail();
}

class _SubDetail extends State<SubDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diary'),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(onPressed: () {
            Navigator.of(context).pushReplacementNamed('/second');
          }, child: Text('두번째 페이지로 이동하기'))
        ),
      ),
    );
  }
}