part of 'player_cubit.dart';

@immutable
abstract class PlayerState {}

class PlayerInitial extends PlayerState {}

class PlayerStop extends PlayerState {}

class PlayerPlay extends PlayerState {
  final String path;
  PlayerPlay(this.path);
}
