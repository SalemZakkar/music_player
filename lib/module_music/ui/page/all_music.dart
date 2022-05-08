import 'package:flutter/material.dart';
import 'package:music_player/module_music/models/music.dart';
import 'package:music_player/module_music/service/audio_query.dart';
import 'package:music_player/module_music/ui/widget/track_card.dart';
import 'package:music_player/shared_widget/loading.dart';
import 'package:music_player/shared_widget/no_data.dart';

class AllMusic extends StatefulWidget {
  const AllMusic({Key? key}) : super(key: key);

  @override
  State<AllMusic> createState() => _AllMusicState();
}

class _AllMusicState extends State<AllMusic> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData themeData = Theme.of(context);
    return Container(
        width: size.width,
        height: size.height,
        alignment: Alignment.center,
        color: themeData.scaffoldBackgroundColor,
        child: FutureBuilder<List<Track>>(
          future: AudioService.getTrack(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Loading();
            } else if (snapshot.data?.isEmpty ?? true) {
              return const NoData();
            } else {
              return ListView.builder(
                itemCount: snapshot.data?.length ?? 0,
                itemBuilder: (context, index) {
                  return TrackCard(
                    track: snapshot.data?[index] ??
                        Track("name", "duration", "album", "artist", "path"),
                  );
                },
              );
            }
          },
        ));
  }
}
