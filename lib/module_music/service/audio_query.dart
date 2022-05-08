
import 'package:music_player/module_music/models/album.dart';
import 'package:music_player/module_music/models/music.dart';
import 'package:on_audio_query/on_audio_query.dart';

class AudioService{
  static Future<bool> permission() async {
    bool permission;
    bool isGrant = await OnAudioQuery.platform.permissionsStatus();
    permission = isGrant;
    if(!isGrant)
      {
        permission = await OnAudioQuery.platform.permissionsRequest();
      }
    return permission;
  }
  static Future<List<Track>> getTrack() async {
    bool per = await permission();
    if(per)
      {
        List<SongModel> songs = await OnAudioQuery.platform.querySongs(sortType: SongSortType.DISPLAY_NAME , );
        //print(songs);
        List<Track> music = [ ];
        songs.forEach((song) {
          music.add(Track(
              song.displayName,
              song.duration.toString(),
              song.album,
              song.artist,
              song.data,
          ));
        });
        return music;
      }
    else{
      return [];
    }


  }

  static Future<List<Album>> getAlbums() async
  {
    var per = await permission();
    List<Album> albums = [];
    if(per)
      {

        List<AlbumModel> data = await OnAudioQuery.platform.queryAlbums();
        data.forEach((album) {
          albums.add(Album(album.album , album.numOfSongs));
        });
      }
    return albums;
  }

}