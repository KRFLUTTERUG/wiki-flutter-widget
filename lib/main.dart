import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:wiki_flutter_examples/cloning/spotify/ui/lyrics_section.dart';
import 'package:wiki_flutter_examples/cloning/spotify/ui/song_control_screen.dart';
import 'package:wiki_flutter_examples/package/20231025/fl_chart.dart';
import 'package:wiki_flutter_examples/widget/20210123/lib/20210123.dart';
import 'package:wiki_flutter_examples/widget/20230602/draggable.dart';
import 'package:wiki_flutter_examples/widget/20231213/lib/20231213.dart';

import 'cloning/spotify/data/model/album.dart';
import 'cloning/spotify/data/model/album_track.dart';
import 'cloning/spotify/ui/album_control_screen.dart';
import 'cloning/spotify/ui/album_radio_screen.dart';
import 'cloning/spotify/ui/albumview_screen.dart';
import 'cloning/spotify/ui/listening_on_screen.dart';
import 'cloning/spotify/ui/lyrics_screen.dart';
import 'cloning/spotify/ui/track_view_screen.dart';
import 'package/20231011/counterprovider/main_counterprovider.dart';
import 'package/20231011/userprovider/main_userprovider.dart';

void main() {
  // Test 시 아래 2줄은 주석 처리 필요
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Album dummyAlbum = Album(
      "Offset-Mix.jpg",
      "Dummy Album",
      "Dummy Singer",
      [
        AlbumTrack("Track 1", "Singer A"),
        AlbumTrack("Track 2", "Singer B"),
        AlbumTrack("Track 3", "Singer C"),
      ],
      "2024",
      "artist_image_url",
      [Colors.blue, Colors.green, Colors.red], // Example color palette
    );

    String dummyTrackName = "Dummy Track";
    Color dummyColor = Colors.blue;
    String dummySinger = "Dummy Singer";
    String dummyAlbumImage = "Offset-Mix.jpg";

    return MaterialApp(
        title: 'Widget Examples',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: TrackViewScreen(),);
  }
}
