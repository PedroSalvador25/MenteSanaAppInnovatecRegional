import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:lottie/lottie.dart';
import 'meditation_guiada_model.dart';
export 'meditation_guiada_model.dart';

class MeditationGuiadaWidget extends StatefulWidget {
  const MeditationGuiadaWidget({super.key});

  @override
  State<MeditationGuiadaWidget> createState() => _MeditationGuiadaWidgetState();
}

class _MeditationGuiadaWidgetState extends State<MeditationGuiadaWidget> {
  late MeditationGuiadaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MeditationGuiadaModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFFB8CED6),
              ),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      Theme.of(context).brightness == Brightness.dark
                          ? 'assets/images/ansiedadDark.jpg'
                          : 'assets/images/ansiedadLight.jpg',
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(1.1, -1.0),
                        child: Lottie.asset(
                          'assets/lottie_animations/leaf.json',
                          width: 150.0,
                          height: 130.0,
                          fit: BoxFit.cover,
                          animate: true,
                        ),
                      ),
                      Lottie.asset(
                        'assets/lottie_animations/sun.json',
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        fit: BoxFit.contain,
                        frameRate: FrameRate(30.0),
                        animate: true,
                      ),
                    ].divide(const SizedBox(height: 250.0)),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 0.0, 0.0),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 10.0,
                            borderWidth: 1.0,
                            buttonSize: 50.0,
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            icon: Icon(
                              Icons.arrow_back_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 30.0,
                            ),
                            onPressed: () async {
                              context.pushNamed(
                                'Home',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType:
                                        PageTransitionType.leftToRight,
                                    duration: Duration(milliseconds: 250),
                                  ),
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(0.0),
                              child: Image.asset(
                                'assets/images/3.2.png',
                                width: 50.0,
                                height: 50.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            'Meditacion',
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelMediumFamily,
                                  color: FlutterFlowTheme.of(context).info,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .labelMediumFamily),
                                ),
                          ),
                          Text(
                            'Sesión Corta',
                            style: FlutterFlowTheme.of(context)
                                .labelSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelSmallFamily,
                                  color: FlutterFlowTheme.of(context).info,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .labelSmallFamily),
                                ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                3.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Guiada',
                              style: FlutterFlowTheme.of(context)
                                  .headlineLarge
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .headlineLargeFamily,
                                    color: FlutterFlowTheme.of(context).info,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .headlineLargeFamily),
                                  ),
                            ),
                          ),
                          Text(
                            'Relájate y ponte cómodo',
                            style: FlutterFlowTheme.of(context)
                                .labelSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelSmallFamily,
                                  color: FlutterFlowTheme.of(context).info,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .labelSmallFamily),
                                ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(2.3, 1.08),
                        child: Lottie.asset(
                          'assets/lottie_animations/menMeditation.json',
                          width: 300.0,
                          height: MediaQuery.sizeOf(context).height * 0.25,
                          fit: BoxFit.cover,
                          frameRate: FrameRate(30.0),
                          animate: true,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.9,
                        height: MediaQuery.sizeOf(context).height * 0.25,
                        child: custom_widgets.AdvanceMusicPlayer(
                          width: MediaQuery.sizeOf(context).width * 0.9,
                          height: MediaQuery.sizeOf(context).height * 0.25,
                          initialUrl: valueOrDefault<String>(
                            _model.guiadaURL,
                            'https://firebasestorage.googleapis.com/v0/b/mentesanaflutter-2b0eb.appspot.com/o/meditationsAudios%2FMeditacion%20de%201%20Minuto%20Mente%20Sana.mp3?alt=media&token=50356d08-2925-4cf5-9e34-71f10c467495',
                          ),
                          sliderActiveColor:
                              FlutterFlowTheme.of(context).secondary,
                          sliderInactiveColor:
                              FlutterFlowTheme.of(context).accent4,
                          backwardIconPath: Icon(
                            Icons.replay_10,
                            color: FlutterFlowTheme.of(context).info,
                            size: 36.0,
                          ),
                          forwardIconPath: Icon(
                            Icons.forward_10,
                            color: FlutterFlowTheme.of(context).info,
                            size: 36.0,
                          ),
                          backwardIconColor: FlutterFlowTheme.of(context).error,
                          forwardIconColor: FlutterFlowTheme.of(context).error,
                          pauseIconPath: Icon(
                            Icons.pause,
                            color: FlutterFlowTheme.of(context).info,
                            size: 36.0,
                          ),
                          playIconPath: Icon(
                            Icons.play_arrow,
                            color: FlutterFlowTheme.of(context).info,
                            size: 36.0,
                          ),
                          pauseIconColor: FlutterFlowTheme.of(context).error,
                          playIconColor: FlutterFlowTheme.of(context).error,
                          loopIconPath: Icon(
                            Icons.loop,
                            color: FlutterFlowTheme.of(context).info,
                          ),
                          loopIconColor: FlutterFlowTheme.of(context).info,
                          shuffleIconPath: Icon(
                            Icons.shuffle,
                            color: FlutterFlowTheme.of(context).info,
                          ),
                          shuffleIconColor: FlutterFlowTheme.of(context).info,
                          playbackDurationTextColor:
                              FlutterFlowTheme.of(context).info,
                          previousIconPath: Icon(
                            Icons.skip_previous,
                            color: FlutterFlowTheme.of(context).info,
                          ),
                          nextIconPath: Icon(
                            Icons.skip_next,
                            color: FlutterFlowTheme.of(context).info,
                          ),
                          previousIconColor: FlutterFlowTheme.of(context).info,
                          nextIconColor: FlutterFlowTheme.of(context).info,
                          loopIconPressedPath: Icon(
                            Icons.loop,
                            color: FlutterFlowTheme.of(context).info,
                          ),
                          shuffleIconPressedPath: Icon(
                            Icons.shuffle_sharp,
                            color: FlutterFlowTheme.of(context).info,
                          ),
                          speakerOnIconPath: Icon(
                            Icons.speaker_sharp,
                            color: FlutterFlowTheme.of(context).info,
                          ),
                          speakerOffIconPath: Icon(
                            Icons.speaker_sharp,
                            color: FlutterFlowTheme.of(context).info,
                          ),
                          speakerOnIconColor: FlutterFlowTheme.of(context).info,
                          speakerOffIconColor:
                              FlutterFlowTheme.of(context).info,
                          dropdownTextColor: FlutterFlowTheme.of(context).info,
                          timerIcon: Icon(
                            Icons.timer_sharp,
                            color: FlutterFlowTheme.of(context).warning,
                          ),
                          musicUrls: _model.listaudio,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).secondary,
                          borderRadius: BorderRadius.circular(10.0),
                          shape: BoxShape.rectangle,
                        ),
                        child: ToggleIcon(
                          onPressed: () async {
                            setState(
                                () => _model.backMusic = !_model.backMusic);
                            if (_model.backMusic) {
                              _model.soundPlayer ??= AudioPlayer();
                              if (_model.soundPlayer!.playing) {
                                await _model.soundPlayer!.stop();
                              }
                              _model.soundPlayer!.setVolume(1.0);
                              _model.soundPlayer!
                                  .setUrl(_model.backgroundMusic)
                                  .then((_) => _model.soundPlayer!.play());
                            } else {
                              _model.soundPlayer?.stop();
                            }
                          },
                          value: _model.backMusic,
                          onIcon: Icon(
                            Icons.music_note,
                            color: FlutterFlowTheme.of(context).info,
                            size: 25.0,
                          ),
                          offIcon: Icon(
                            Icons.music_off,
                            color: FlutterFlowTheme.of(context).info,
                            size: 25.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ].divide(const SizedBox(height: 20.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
