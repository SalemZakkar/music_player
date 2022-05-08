import 'package:flutter/material.dart';
import 'package:music_player/module_music/models/album.dart';
import 'package:music_player/shared_widget/album_icon.dart';

class AlbumCard extends StatefulWidget {
  final Album album;
  const AlbumCard({Key? key, required this.album}) : super(key: key);

  @override
  State<AlbumCard> createState() => _AlbumCardState();
}

class _AlbumCardState extends State<AlbumCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData themeData = Theme.of(context);
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: () {},
      child: Container(
        width: size.width * 0.35,
        height: 120,
        decoration: BoxDecoration(
            color: themeData.cardColor.withOpacity(0.5),
            borderRadius: BorderRadius.circular(30)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: size.width,
              height: 140,
              alignment: Alignment.center,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              child: const AlbumIcon(),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(5),
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    widget.album.name,
                    style: TextStyle(
                        color: themeData.textTheme.bodyText1?.color!,
                        fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  )),
            ))
          ],
        ),
      ),
    );
  }
}
