import 'package:flutter/material.dart';
import 'package:video_room/LiveConference/live_conference.dart';


class ConferencePage extends StatelessWidget {
  const ConferencePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            MaterialButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return const VideoConferencePage(conferenceID:"1234");
              }));
            },child: const Text("Start Conference")) ,


            MaterialButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return const VideoConferencePage(conferenceID:"1234");
              }));
            },child: const Text("Watch Conference")) ,

          ],
        ),
      ),
    );
  }
}
