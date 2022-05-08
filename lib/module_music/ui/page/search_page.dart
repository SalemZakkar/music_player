// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'package:flutter/material.dart';
import 'package:music_player/module_music/service/audio_query.dart';
import 'package:music_player/module_music/ui/widget/track_card.dart';
import 'package:music_player/shared_widget/gradient_base_widget.dart';

import '../../models/music.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String payload = "";
  List<Track> res = [];
  @override
  Widget build(BuildContext context) {
    return GradientBase(
      child: Scaffold(
        appBar: AppBar(
          title: TextField(
            style: const TextStyle(color: Colors.white, fontSize: 20),
            decoration: const InputDecoration(
                hintText: "Search", hintStyle: TextStyle(color: Colors.white)),
            onChanged: (search) async {
              setState(() {
                res.clear();
              });
              List<Track> data = await AudioService.getTrack();
              data.forEach((element) {
                if (element.name!
                    .toLowerCase()
                    .contains(search.toLowerCase())) {
                  setState(() {
                    res.add(element);
                  });
                }
              });
            },
          ),
        ),
        body: ListView.builder(
          itemCount: res.length,
          itemBuilder: (context, index) {
            return TrackCard(
              track: res[index],
            );
          },
        ),
      ),
    );
  }
}
