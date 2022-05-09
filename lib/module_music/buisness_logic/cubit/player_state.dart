part of 'player_cubit.dart';

@immutable
abstract class PlayerState {}

class PlayerInitial extends PlayerState {}

class PlayerStop extends PlayerState {
  final Track track = Track("No Playing Track", null , null , null , null);
  final int state = 2;
}

class PlayerPlay extends PlayerState {
  final Track track;
  final int state = 0;
  PlayerPlay(this.track);
}

class PlayerPause extends PlayerState{
  final int state = 1;
  final Track track;
  PlayerPause(this.track);
}
