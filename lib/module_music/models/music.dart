class Track {
  String? name;
  String? artist;
  String? album;
  String? duration;
  String? path;
  Track(this.name, this.duration, this.album, this.artist, this.path);
  @override
  String toString() {
    return {
      "Name": name,
      "artist": artist,
      "album": album,
      "duration": duration.toString(),
      "path": path
    }.toString();
  }
}
