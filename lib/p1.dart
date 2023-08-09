

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flame_audio/flame_audio.dart';
class Xylophone extends StatefulWidget {
  const Xylophone({super.key});

  @override
  State<Xylophone> createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {





  Widget play1({required Color c, required double h}){
    final player=new AudioCache();

//

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: SizedBox(
        
        
        height: 80,
        width: 1500-h,
        
        child: TextButton(

          style: ButtonStyle(
            
            backgroundColor: MaterialStateProperty.all<Color>(c),
            
          ),
          child:Text(""),
          onPressed: () {
           FlameAudio.bgm.play('sample-3s');

            

          },
        ),
      ),
    );

  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        title: Center(child: Text("XYLOPHONE")),
      ),
      body: Center(
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,


          children: [
            SizedBox(height:10
            ),

            play1(c: Colors.red,h:100),
            SizedBox(height:10
            ),
            play1(c: Colors.orange,h:200),
            SizedBox(height:10
            ),
            play1(c: Colors.yellow,h:300),
            SizedBox(height:10
            ),
            play1(c: Colors.green,h:400),
            SizedBox(height:10
            ),
            play1(c: Colors.blue,h: 500),
            SizedBox(height:10
            ),
            play1(c: Colors.deepPurple,h: 600),
            SizedBox(height:10
            ),
            play1(c: Colors.purple,h: 700),



          ],

        ),
      ),



    );
  }
}
