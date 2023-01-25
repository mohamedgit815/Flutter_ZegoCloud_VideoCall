import 'package:flutter/material.dart';
import 'package:video_room/LiveStreaming/live_streaming.dart';


class StreamingPage extends StatelessWidget {
  const StreamingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            MaterialButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return const LiveStreamingPage(liveID: "1234" , isHost: true);
              }));
            },child: const Text("Start Live Stream")) ,


            MaterialButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return const LiveStreamingPage(liveID: "1234" , isHost: false);
              }));
            },child: const Text("Watch Live Stream")) ,

          ],
        ),
      ),
    );
  }
}
