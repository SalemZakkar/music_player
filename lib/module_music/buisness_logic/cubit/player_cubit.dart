import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:music_player/module_music/service/audio_player.dart';
// ignore: unused_import
import 'package:music_player/module_music/service/audio_query.dart';

part 'player_state.dart';

class PlayerCubit extends Cubit<PlayerState> {
  PlayerCubit() : super(PlayerInitial());
  void playTrack(String path) {
    Timer(const Duration(seconds: 1), () {
      emit(PlayerPlay(path));
      AudioPlayerHelper.play(path);
    });
  }
}

PlayerCubit playerCubit = PlayerCubit();
