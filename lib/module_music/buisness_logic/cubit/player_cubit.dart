import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:music_player/module_music/models/music.dart';
import 'package:music_player/module_music/service/audio_player.dart';

part 'player_state.dart';

class PlayerCubit extends Cubit<PlayerState> {
  PlayerCubit() : super(PlayerInitial());
  void playTrack(Track track) {
    emit(PlayerPlay(track));
    AudioPlayerHelper.play(track.path ?? " ");
  }
  void pause(Track track){
    AudioPlayerHelper.pause();
    emit(PlayerPause(track));
  }
  void stop()
  {
    AudioPlayerHelper.stop();
    emit(PlayerStop());
  }
}

PlayerCubit playerCubit = PlayerCubit();
