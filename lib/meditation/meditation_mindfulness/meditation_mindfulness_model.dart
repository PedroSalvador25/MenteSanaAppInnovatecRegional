import '/flutter_flow/flutter_flow_util.dart';
import 'meditation_mindfulness_widget.dart' show MeditationMindfulnessWidget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class MeditationMindfulnessModel
    extends FlutterFlowModel<MeditationMindfulnessWidget> {
  ///  Local state fields for this page.

  List<String> listaudio = [
    'https://filesamples.com/samples/audio/mp3/sample3.mp3'
  ];
  void addToListaudio(String item) => listaudio.add(item);
  void removeFromListaudio(String item) => listaudio.remove(item);
  void removeAtIndexFromListaudio(int index) => listaudio.removeAt(index);
  void insertAtIndexInListaudio(int index, String item) =>
      listaudio.insert(index, item);
  void updateListaudioAtIndex(int index, Function(String) updateFn) =>
      listaudio[index] = updateFn(listaudio[index]);

  bool backMusic = false;

  String mindfulnessURL =
      'https://firebasestorage.googleapis.com/v0/b/mentesanaflutter-2b0eb.appspot.com/o/meditationsAudios%2FMeditacion%20Mindfullness.mp3?alt=media&token=da43de9b-6742-4276-97d0-bd99f39488d4';

  String backgroundMusic =
      'https://firebasestorage.googleapis.com/v0/b/mentesanaflutter-2b0eb.appspot.com/o/respirationExercises%2Fmusic%2Frelaxation-music-49-50061.mp3?alt=media&token=5258570b-ac54-46b9-b9d9-adbcaaf14bb7';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  AudioPlayer? soundPlayer;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
