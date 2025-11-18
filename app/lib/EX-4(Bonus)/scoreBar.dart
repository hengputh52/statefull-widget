import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main()
{
  runApp(
    DevicePreview(builder: (context) =>
      MaterialApp(
        useInheritedMediaQuery: true,
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              'My Score',
              style: TextStyle(
                color: Colors.white
              ),
              
            ),
            backgroundColor: Colors.black,
          ),
        body: Container(
          color: Colors.amberAccent,
          child: Center(
            child: Container(
              height: 300,
              margin: EdgeInsets.all(10),
              
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: MyScore(),
            ),
          )
          )
        ),
      )
    )
  );
}

class MyScore extends StatefulWidget{
  

  const MyScore({
    super.key,
    
  });

  @override
  State<MyScore> createState() => _MyScoreState();
}

class _MyScoreState extends State<MyScore> {
  //double progressBar = 0;
  double minScore = 0;
  double maxScore =10;
  //double maxWidth = 300;
  
  //double counter() => maxWidth / 10;

  void increase()
  {
    setState(() {
      if(minScore == maxScore) return;
      minScore++;
      //progressBar = progressBar + counter();
      
      
    }); 
  }


  void descrease()
  {
    setState(() {
      if(minScore == 0) return;
      minScore--;
      //progressBar = progressBar - counter();
      
      
    });
    
  }

  Color colorBar () {
    if (minScore <= 3) {
      return const Color.fromARGB(255, 181, 255, 183);
    } else if (minScore > 3 && minScore <=7) {
      return const Color.fromARGB(255, 66, 255, 72);
    } else if (minScore >7) {
      return const Color.fromARGB(255, 0, 92, 3);
    }
    return Colors.green;
  }
  @override
  Widget build(BuildContext context) {
    //final ScoreBar scoreBar;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('My Score in Flutter',
        style: TextStyle(
          fontSize: 25,
          color: Colors.black,
          fontWeight: FontWeight.bold
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
    
            IconButton(
              onPressed: descrease,
              icon: const Icon(CupertinoIcons.minus),
              tooltip: 'descrease your score',
            ),
            IconButton(
              onPressed: increase,
              icon: const Icon(Icons.add),
              tooltip: 'increase your score',
            ),
           ],
        ),
        Stack(
        children: [
        Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10)
          )
        ),
        FractionallySizedBox(
          widthFactor: minScore / maxScore,
          child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: colorBar(),
          
            borderRadius: BorderRadius.circular(10)
          )
        ),
      )
        
      ],
    )
    ],
    );
  }
}
