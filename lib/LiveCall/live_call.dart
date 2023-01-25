import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';


final String random = const Uuid().v4();

class LiveCall extends StatelessWidget {
  const LiveCall({Key? key, required this.callID}) : super(key: key);
  final String callID;

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: 1126490554,
      appSign: "603114d3381f3c4ced1b1fb64e068d05f0a6b28b1fdde52961e0de7320a2974e",
      userID: random ,
      userName: random ,
      callID: callID,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
        ..onOnlySelfInRoom = (_) => Navigator.of(context).pop(),
    );
  }
}