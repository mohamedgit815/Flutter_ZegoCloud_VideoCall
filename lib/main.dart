import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_room/LiveAudioRoom/room_page.dart';
import 'package:video_room/LiveCall/call_page.dart';
import 'package:video_room/LiveConference/conference_page.dart';
import 'package:video_room/LiveStreaming/stream_page.dart';


final GlobalKey<NavigatorState> navigatorState = GlobalKey<NavigatorState>();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: navigatorState,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              MaterialButton(onPressed: (){
                navigatorState.currentState!.push(CupertinoPageRoute(builder: (context)=> const CallPage()));
              },child: const Text("Call")) ,


              MaterialButton(onPressed: (){
                navigatorState.currentState!.push(CupertinoPageRoute(builder: (context)=> const ConferencePage()));

              },child: const Text("Video Conference")) ,


              MaterialButton(onPressed: (){
                navigatorState.currentState!.push(CupertinoPageRoute(builder: (context)=> const RoomPage()));
              },child: const Text("Audio Room")) ,


              MaterialButton(onPressed: () {
                navigatorState.currentState!.push(CupertinoPageRoute(builder: (context)=> const StreamingPage()));
              },child: const Text("Stream"))

            ],
          ),
        ),
      ),
    );
  }
}