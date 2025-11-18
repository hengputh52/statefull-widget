import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() => runApp(DevicePreview(builder: (context) =>
  MaterialApp(
    useInheritedMediaQuery: true,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Custom buttons"),
          backgroundColor: Colors.amber,
        ),
        body: Center(
        
          
          child: Padding(
            padding: const EdgeInsets.all(10),
            

            child: Column(
              spacing: 15,
              mainAxisAlignment: MainAxisAlignment.center, 
              children: [
                SelectableButton(),
                SelectableButton(),
                SelectableButton(),
                SelectableButton(),
              ],
            ),
          ),
        ),
      ),
    )
  ) 
);

class SelectableButton extends StatefulWidget {
  const SelectableButton({
    super.key,
  });


  @override
  State<SelectableButton> createState() => _SelectableButtonState();
}

class _SelectableButtonState extends State<SelectableButton> {

  bool selected = false;

  Color? get buttonBackgroundColor => selected ? Colors.blue[500] : Colors.blue[50];
  Color get textColor => selected ? Colors.white : Colors.black;
  String get textLabel => selected ? 'Selected' : 'Not Selected';

  void onSelect()
  {
    setState(() {
      selected = !selected;
    });
    
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
          width: 400,
          height: 100,
          child: ElevatedButton(
              onPressed: onSelect,
              style: ElevatedButton.styleFrom(
                backgroundColor: buttonBackgroundColor,
                foregroundColor: textColor,
              ),
              child: Center(
                child: Text(textLabel),
              )
            ),
        );
  }
}
