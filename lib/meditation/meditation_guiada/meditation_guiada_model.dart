import '/flutter_flow/flutter_flow_util.dart';
import 'meditation_guiada_widget.dart' show MeditationGuiadaWidget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class MeditationGuiadaModel extends FlutterFlowModel<MeditationGuiadaWidget> {
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

  String guiadaURL =
      'https://firebasestorage.googleapis.com/v0/b/mentesanaflutter-2b0eb.appspot.com/o/meditationsAudios%2FMeditacion%20de%201%20Minuto%20Mente%20Sana.mp3?alt=media&token=50356d08-2925-4cf5-9e34-71f10c467495';

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
