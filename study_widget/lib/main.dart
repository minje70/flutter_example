import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: MyButton(),
        ),
      ),
    ),
  );
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('MyButton was tapped');
      },
      child: Container(
        height: 50.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.lightGreen[500],
        ),
        child: const Center(
          child: Text('Engage'),
        ),
      ),
    );
    // // Container안에 GestureDetector가 있으면 GestureDetector 안에 있는 Gesture에 대해서 handling한다.

    // return Container(
    //   height: 50.0,
    //   padding: const EdgeInsets.all(8.0),
    //   margin: const EdgeInsets.symmetric(horizontal: 8.0),
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(5.0),
    //     color: Colors.lightGreen[500],
    //   ),
    //   child: GestureDetector(
    //     onTap: () {
    //       print('MyButton was tapped');
    //     },
    //     child: const Center(
    //       child: Text('Engage'),
    //     ),
    //   ),
    // );
  }
}
