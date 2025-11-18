import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

List<String> images = [
  "assets/w4-s2/bird.jpg",
  "assets/w4-s2/bird2.jpg",
  "assets/w4-s2/insect.jpg",
  "assets/w4-s2/girl.jpg",
  "assets/w4-s2/man.jpg",
];

void main() => runApp(DevicePreview(builder: (context) =>
  MaterialApp(
      debugShowCheckedModeBanner: false, 
      useInheritedMediaQuery: true,// Why this line ? Can you explain it ?
      home: MyHomePage(),
    )
  )
);

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentImageIndex = 0;

  void nextImage()
  {
    setState(() {
      currentImageIndex = currentImageIndex++ == images.length - 1 ? currentImageIndex = 0 : currentImageIndex++;
      //print('hah');
      //print(images.length);
    });
    
  }

  void previousImage()
  {
    setState(() {
      currentImageIndex == 0 ? currentImageIndex = (images.length -1) : currentImageIndex--;
    });
    //print('ok');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: const Text('Image viewer'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.navigate_before),
            tooltip: 'Go to the previous image',
            onPressed: previousImage,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
            child: IconButton(
              icon: const Icon(Icons.navigate_next),
              tooltip: 'Go to the next image',
              onPressed: nextImage,
            ),
          ),
        ],
      ),
      body: Image.asset(
        images[currentImageIndex]
      ),
    );
  }
}


