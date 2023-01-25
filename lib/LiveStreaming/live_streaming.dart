import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:zego_uikit_prebuilt_live_streaming/zego_uikit_prebuilt_live_streaming.dart';


final String random = const Uuid().v4();

class LiveStreamingPage extends StatelessWidget {
  final String liveID;
  final bool isHost;

  const LiveStreamingPage({Key? key, required this.liveID, this.isHost = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ZegoUIKitPrebuiltLiveStreaming(
        appID: 524516720,
        appSign: "c7efcde66b041f5d76cf8bdb87c6db25dab7e9da0180ab033bcc841d658510be",
        userID: random,
        userName: random,
        liveID: liveID,
        config: isHost
            ? ZegoUIKitPrebuiltLiveStreamingConfig.host()
            : ZegoUIKitPrebuiltLiveStreamingConfig.audience(),
      ),
    );
  }
}