import 'package:flutter/material.dart';

class EditableText extends AnimatedWidget {
  final String text;
  final TextStyle style;

  EditableText({Key key, Animation<double> animation, this.text, this.style}) : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final Animation<double> animation = listenable;
    int totalLettersCount = text.length;
    int currentLettersCount = (totalLettersCount * animation.value).round();
    return Text(text.substring(0, currentLettersCount), style: style);
  }
}

class EditableTextField extends StatefulWidget {
  final String text;
  final InputDecoration decoration;
  final Animation<double> animation;

  EditableTextField({Key key, this.animation, this.text, this.decoration})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new EditableTextState();
  }
}

class EditableTextFieldState extends State<EditableTextField> {
  final TextEditingController controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextFormField(decoration: widget.decoration, controller: controller);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.animation.addListener(() {
      int totalLetterCounts = widget.text.length;
      int currentLetterCounts =
          (totalLetterCounts * widget.animation.value).round();
      setState(() {
        controller.text = widget.text.substring(0, currentLetterCounts);
      });
    });
  }
}
