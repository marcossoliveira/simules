import 'package:flutter/material.dart';

class Question extends StatefulWidget {

  final String question;

  Question(this.question);

  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {

  String question;



  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    question = widget.question;

  }

  @override
  Widget build(BuildContext context) {
    return Text(question, style: TextStyle(color: Colors.black45),);
  }
}
