import 'dart:math';
import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_live_audio_room/zego_uikit_prebuilt_live_audio_room.dart';


final int random = Random().nextInt(10000000);
class LiveAudioRoomPage extends StatelessWidget {
  final String roomID;
  final bool isHost;

  const LiveAudioRoomPage({Key? key, required this.roomID, this.isHost = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ZegoUIKitPrebuiltLiveAudioRoom(
        appID: 2777187,
        appSign: "247930594811f48816414c99f914484eca7656331d4a97d726e1d8396e1d7d33",
        userID: '$random',
        userName: '$random',
        roomID: roomID,

        config: isHost
            ? ZegoUIKitPrebuiltLiveAudioRoomConfig.host()
            : ZegoUIKitPrebuiltLiveAudioRoomConfig.audience(),
      ),
    );
  }
}