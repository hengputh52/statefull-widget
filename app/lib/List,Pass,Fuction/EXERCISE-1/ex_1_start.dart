import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

List<String> colors = ["red", "blue", "green"];

List<Widget> getColors()
{
  return colors.map((item) => Text(item)).toList();
}

void main() {
  runApp(
    DevicePreview(builder: (context) =>
    MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              Label("Method 1: Loop in Array", bold: true),
              Column(
                children: [
                  Text('Start'),
                  for (String color in colors) Text('Items $color'),
                  Text('End'),
                ],
              ),
              // TODO
              Label("Method 2: Map", bold: true),
              Column(
                children: [
                  Text('Start'),
                  ...colors.map((item) => Text(item)).toList(),
                  Text('End'),
                ],
              ),
              // TODO
              Label("Method 23: Dedicated Function", bold: true),
              // TODO
              Column(
                children: [
                  Text('Start'),
                  ...getColors(),
                  Text('End'),

                ],
              )
            ],
          ),
        ),
      ),
    ),
    )
  );
}

class Label extends StatelessWidget {
  const Label(this.text, {super.key, this.bold = false});

  final bool bold;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: (bold ? FontWeight.bold : FontWeight.normal),
      ),
    );
  }
}
