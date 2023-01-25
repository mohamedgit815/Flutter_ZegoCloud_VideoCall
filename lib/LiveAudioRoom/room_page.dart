import 'package:flutter/material.dart';
import 'package:video_room/LiveAudioRoom/live_auido_room.dart';


class RoomPage extends StatelessWidget {
  const RoomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            MaterialButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return const LiveAudioRoomPage(roomID: "1234" , isHost: true);
              }));
            },child: const Text("Start Live Room")) ,


            MaterialButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return const LiveAudioRoomPage(roomID: "1234" , isHost: false);
              }));
            },child: const Text("Watch Live Room")) ,

          ],
        ),
      ),
    );
  }
}
