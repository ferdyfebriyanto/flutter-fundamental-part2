import 'package:flutter/material.dart';
import 'package:flutter_fundamental_3/basic_widget/image_widget.dart';

class MyGestureOnTap extends StatefulWidget {
  const MyGestureOnTap({Key? key}) : super(key: key);

  @override
  State<MyGestureOnTap> createState() => _MyGestureOnTapState();
}

class _MyGestureOnTapState extends State<MyGestureOnTap> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: GestureDetector(
            onLongPress: _incrementCounter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const MyImageWidget(),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            )),
      ),
    );
  }
}
