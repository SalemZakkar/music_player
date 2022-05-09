import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/module_music/buisness_logic/cubit/player_cubit.dart';
import 'package:music_player/theme_module/buisness_logic/cubit/theme_cubit.dart';
import '../../models/music.dart';

class MiniPlayer extends StatefulWidget {
  const MiniPlayer({Key? key}) : super(key: key);

  @override
  State<MiniPlayer> createState() => _MiniPlayerState();
}

class _MiniPlayerState extends State<MiniPlayer> {
  int state = 2;
  Track? track;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData themeData = Theme.of(context);
    return BlocProvider<PlayerCubit>(
      create: (context) {
        playerCubit.stop();
        return playerCubit;
      },
      child: BlocListener<PlayerCubit, PlayerState>(
        listener: (context, stateB) {
          if (stateB is PlayerPause) {
            setState(() {
              track = stateB.track;
              state = stateB.state;
            });
          } else if (stateB is PlayerPlay) {
            setState(() {
              track = stateB.track;
              state = stateB.state;
            });
          } else {
            setState(() {
              track = PlayerStop().track;
              state = 2;
            });
          }
        },
        child: Container(
          height: 60,
          width: size.width,
          decoration: BoxDecoration(
              color: themeData.cardColor.withOpacity(0.15),
              border: Border.all(color: themeData.dividerColor, width: 0.2)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: size.width * 0.5,
                alignment: Alignment.center,
                child: ((state == 0) || (state == 1)
                    ? Text(
                        track?.name ?? "No Playing Track",
                        textScaleFactor: 1,
                        overflow: TextOverflow.ellipsis,
                        textWidthBasis: TextWidthBasis.longestLine,
                        style: TextStyle(
                            color: themeData.textTheme.bodyText1?.color!),
                      )
                    : Text("No Playing Track",
                        textScaleFactor: 1,
                        overflow: TextOverflow.ellipsis,
                        textWidthBasis: TextWidthBasis.longestLine,
                        style: TextStyle(
                            color: themeData.textTheme.bodyText1?.color!))),
              ),
              Expanded(
                child: Container(
                  child: ((state == 0 || state == 1)
                      ? ((state == 0)
                          ? IconButton(
                              onPressed: () {
                                playerCubit.pause(track!);
                              },
                              icon: const Icon(Icons.pause))
                          : IconButton(
                              onPressed: () {
                                playerCubit.playTrack(track!);
                              },
                              icon: const Icon(Icons.play_arrow)))
                      : const SizedBox()),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
