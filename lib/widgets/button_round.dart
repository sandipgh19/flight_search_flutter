import 'package:flutter/material.dart';

class ButtonRound extends StatelessWidget {
  final GestureTapCallback callback;
  final bool isSelected;
  final String text;

  const ButtonRound({Key key, this.callback, this.isSelected, this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Color backgroundColor = isSelected ? Colors.yellowAccent : Colors.transparent;
    Color textColor = isSelected ? Colors.greenAccent : Colors.white;
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(4.0),
      child: new InkWell(
        onTap: callback,
        child: new Container(
          height: 36.0,
          decoration: new BoxDecoration(
            color: backgroundColor,
            border: new Border.all(color: Colors.black, width: 1.0),
            borderRadius: new BorderRadius.circular(28.0),
          ),
          child: new Center(
            child: new Text(
              text,
              style: new TextStyle(color: textColor),
            ),
          ),
        ),
      ),
    ));
  }
}
