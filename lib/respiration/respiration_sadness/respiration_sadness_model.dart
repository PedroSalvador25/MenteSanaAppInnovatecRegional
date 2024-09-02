import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'respiration_sadness_widget.dart' show RespirationSadnessWidget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class RespirationSadnessModel
    extends FlutterFlowModel<RespirationSadnessWidget> {
  ///  Local state fields for this page.

  bool hideButton = false;

  String animationUrl =
      'https://lottie.host/e16d2460-ece6-454c-8108-786dd23e4ca0/VNOUuWcNq9.json';

  bool timerState = true;

  bool backMusic = true;

  String musicUrl =
      'https://firebasestorage.googleapis.com/v0/b/mentesanaflutter-2b0eb.appspot.com/o/respirationExercises%2Fmusic%2Frelaxation-music-49-50061.mp3?alt=media&token=5258570b-ac54-46b9-b9d9-adbcaaf14bb7';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Respiration widget.
  late bool respirationStatus;
  // State field(s) for Timer widget.
  final timerInitialTimeMs = 85000;
  int timerMilliseconds = 85000;
  String timerValue = StopWatchTimer.getDisplayTime(
    85000,
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
