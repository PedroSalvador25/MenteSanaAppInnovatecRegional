import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'respiration_scared_widget.dart' show RespirationScaredWidget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class RespirationScaredModel extends FlutterFlowModel<RespirationScaredWidget> {
  ///  Local state fields for this page.

  bool hideButton = false;

  String animationUrl =
      'https://lottie.host/f46c9230-226b-48eb-9255-7ec6e192b870/iRK0lyBuXf.json';

  bool timerState = true;

  bool backMusic = true;

  String musicUrl =
      'https://firebasestorage.googleapis.com/v0/b/mentesanaflutter-2b0eb.appspot.com/o/respirationExercises%2Fmusic%2Frelaxation-music-49-50061.mp3?alt=media&token=5258570b-ac54-46b9-b9d9-adbcaaf14bb7';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Respiration widget.
  late bool respirationStatus;
  // State field(s) for Timer widget.
  final timerInitialTimeMs = 75999;
  int timerMilliseconds = 75999;
  String timerValue = StopWatchTimer.getDisplayTime(
    75999,
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
