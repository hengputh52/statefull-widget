import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    //useInheritedMediaQuery: true,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Favorite cards",
          style: TextStyle(
            color: Colors.white
          ),
          ),
        ),
        body: Column(
          children: [
            FavouriteCard(),
            FavouriteCard(),
              
            
          ],
        ),
      ),
    )
  
);

class FavouriteCard extends StatefulWidget {
  
  const FavouriteCard({
    super.key,
  });
  
  @override
  State<FavouriteCard> createState() => _FavouriteCardState();
}

class _FavouriteCardState extends State<FavouriteCard> {
  bool isFavorite = false;
  
  Color get iconColor => isFavorite? Colors.red : Colors.grey;

  void onFavorite()
  {
    setState(() {
      isFavorite = !isFavorite;
      
    });
    
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.blueGrey.shade100)
        )
      ),
    
        // YOUR CODE
      
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
             
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Title',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w200
                  ),
                ),
                  Text('how are you'),
                ],
              )
            ),
            IconButton(
              onPressed: onFavorite,
              icon: Icon(
                Icons.favorite,
                color: iconColor,
              )
            )
          ],
        ),
      );
  }
}
