import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:zego_uikit_prebuilt_video_conference/zego_uikit_prebuilt_video_conference.dart';

final String random = const Uuid().v4();


class VideoConferencePage extends StatelessWidget {
  final String conferenceID;

  const VideoConferencePage({
    Key? key,
    required this.conferenceID,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: ZegoUIKitPrebuiltVideoConference(
        appID: 148000398,
        appSign: "e6776263698dcbe73b37fd7574f4843eee28b342771e96c0f423bbbdc79cecaf",
        userID: random,
        userName: random,
        conferenceID: conferenceID,
        config: ZegoUIKitPrebuiltVideoConferenceConfig(),
      ),

    );
  }
}