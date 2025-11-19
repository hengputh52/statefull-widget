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
          height: double.infinity,
            child: SingleChildScrollView(
              child: 
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MyScore(course: 'Flutter'),
                  //SizedBox(height: 20),
                  MyScore(course: 'Dart'),
                  MyScore(course: 'Web development'),
                  MyScore(course: 'Backend Development'),
                  MyScore(course: 'C++',),
                  MyScore(course: 'Pyhton',),
                ],
              )
              ),
            
            
              
              //padding: EdgeInsets.all(10),
              
              
            
          
          )
        ),
      )
    )
  );
}

class MyScore extends StatefulWidget{
  

  const MyScore({
    super.key,
    required this.course
    
  });
  final String course;

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
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
        ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('My Score in ${widget.course}',
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
        ),
      ),
    );
  }
}
