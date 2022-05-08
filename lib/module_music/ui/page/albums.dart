import 'package:flutter/material.dart';
import 'package:music_player/module_music/models/album.dart';
import 'package:music_player/module_music/service/audio_query.dart';
import 'package:music_player/module_music/ui/widget/album_card.dart';
import 'package:music_player/shared_widget/loading.dart';
import 'package:music_player/shared_widget/no_data.dart';

class AllAlbums extends StatefulWidget {
  const AllAlbums({Key? key}) : super(key: key);

  @override
  State<AllAlbums> createState() => _AllAlbumsState();
}

class _AllAlbumsState extends State<AllAlbums> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData themeData = Theme.of(context);
    return Container(
      width: size.width,
      height: size.height,
      color: themeData.scaffoldBackgroundColor,
      alignment: Alignment.center,
      child: FutureBuilder<List<Album>>(
        future: AudioService.getAlbums(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Loading();
          } else if (snapshot.data?.isEmpty ?? true) {
            return const NoData();
          } else {
            return GridView.builder(
              padding: const EdgeInsets.all(20),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 180),
              itemBuilder: (context, index) {
                return AlbumCard(
                  album: snapshot.data?[index] ?? Album("name", 0),
                );
              },
              itemCount: snapshot.data?.length ?? 0,
            );
          }
        },
      ),
    );
  }
}
