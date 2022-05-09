import 'package:just_audio/just_audio.dart';

class AudioPlayerHelper {
  static void play(String? path) {
    if (path == null) {
      audioPlayer.play();
    } else {
      audioPlayer.stop();
      audioPlayer.setFilePath(path);
      if (!audioPlayer.playing) {
        audioPlayer.play();
      }
    }
  }

  static void pause() {
    audioPlayer.pause();
  }

  static void stop() {
    audioPlayer.stop();
  }
  static void seek(Duration duration)
  {
    audioPlayer.seek(duration);
  }
}

AudioPlayer audioPlayer = AudioPlayer();
