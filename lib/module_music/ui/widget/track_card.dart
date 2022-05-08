import 'package:flutter/material.dart';
import 'package:music_player/constants/strings.dart';
import 'package:music_player/module_music/models/music.dart';
import 'package:music_player/shared_widget/divider.dart';
import 'package:music_player/shared_widget/music_icon.dart';

class TrackCard extends StatefulWidget {
  final Track track;

  const TrackCard({Key? key, required this.track}) : super(key: key);

  @override
  State<TrackCard> createState() => _TrackCardState();
}

class _TrackCardState extends State<TrackCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData themeData = Theme.of(context);
    return SizedBox(
      width: size.width * 0.95,
      height: 110,
      child: InkWell(
        // borderRadius: BorderRadius.circular(30),
        onTap: () {},
        child: Column(
          children: [
            Container(
              width: size.width * 0.95,
              height: 100,
              color: Colors.transparent,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        color: themeData.cardColor.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(25)),
                    alignment: Alignment.center,
                    child: const MusicIcon(),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.track.name ?? AppStrings.unknown,
                            style: TextStyle(
                                color: themeData.textTheme.bodyText1!.color),
                            textScaleFactor: 1.2,
                            overflow: TextOverflow.ellipsis),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          widget.track.artist ?? AppStrings.unknown,
                          style: TextStyle(
                              color: themeData.textTheme.bodyText1!.color,
                              fontWeight: FontWeight.w300),
                          textScaleFactor: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [DividerWidget(width: size.width * 0.75)],
            )
          ],
        ),
      ),
    );
  }
}
