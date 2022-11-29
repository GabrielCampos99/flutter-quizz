import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback handleSelect;
  final String awnswerText;
  Answer(this.handleSelect, this.awnswerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)),
        onPressed: handleSelect,
        child: Text(awnswerText),
      ),
    );
  }
}
