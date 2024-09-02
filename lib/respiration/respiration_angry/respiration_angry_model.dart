import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'respiration_angry_widget.dart' show RespirationAngryWidget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class RespirationAngryModel extends FlutterFlowModel<RespirationAngryWidget> {
  ///  Local state fields for this page.

  bool hideButton = false;

  String animationUrl =
      'https://lottie.host/2f32662a-d635-4da6-be8f-ed9e0cfdb3c4/CgqNDBDj9E.json';

  bool timerState = true;

  bool backMusic = true;

  String musicUrl =
      'https://firebasestorage.googleapis.com/v0/b/mentesanaflutter-2b0eb.appspot.com/o/respirationExercises%2Fmusic%2Frelaxation-music-49-50061.mp3?alt=media&token=5258570b-ac54-46b9-b9d9-adbcaaf14bb7';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Respiration widget.
  late bool respirationStatus;
  // State field(s) for Timer widget.
  final timerInitialTimeMs = 65000;
  int timerMilliseconds = 65000;
  String timerValue = StopWatchTimer.getDisplayTime(
    65000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  AudioPlayer? soundPlayer1;
  AudioPlayer? soundPlayer2;

  @override
  void initState(BuildContext context) {
    respirationStatus = false;
  }

  @override
  void dispose() {
    timerController.dispose();
  }
}
