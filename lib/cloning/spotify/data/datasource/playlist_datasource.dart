import '../model/playlist.dart';
import '../model/playlist_track.dart';

abstract class PlaylistDatasource {
  Future<Playlist> trackList(String mix);
}

class PLaylistLocalDatasource extends PlaylistDatasource {
  @override
  Future<Playlist> trackList(String mix) async {
    if (mix == "Drake mix") {
      return Playlist(
        "55 min",
        [
          PLaylistTrack("cloning/spotify/drake mix/One-Dance.jpg", "Drake ", "One Dance"),
          PLaylistTrack(
              "drake mix/Money-Trees.jpg", "Kendrick Lamar", "Money Trees"),
          PLaylistTrack("cloning/spotify/drake mix/God's-Plan.jpg", "Drake ", "God's Plan"),
          PLaylistTrack("cloning/spotify/drake mix/Low-Life-(feat. The Weeknd).jpg",
              "Future, The Weekend", "Low Life (feat. The Weeknd)"),
          PLaylistTrack("cloning/spotify/drake mix/WAIT-FOR-U-(feat. Drake).jpg",
              "Future, Drake, Tmes", "WAIT FOR U (feat. Drake & Tems)"),
          PLaylistTrack("cloning/spotify/drake mix/Break-from-Toronto.jpg", "PARTYNEXTDOOR ",
              "Break from Toronto"),
          PLaylistTrack(
              "cloning/spotify/drake mix/In-My-Feelings.jpg", "Drake ", "In My Feelings"),
          PLaylistTrack(
              "cloning/spotify/drake mix/Ric-Flair-Drip-(with Metro Boomin).jpg",
              "cloning/spotify/drake mix/Offset, Metro Boomin",
              "Ric Flair Drip (with Metro Boomin)"),
          PLaylistTrack(
              "cloning/spotify/drake mix/Nice-For-What.jpg", "Drake ", "Nice For What"),
          PLaylistTrack(
              "cloning/spotify/drake mix/Lovin-On-Me.jpg", "Jack Harlow", "Lovin On Me"),
          PLaylistTrack(
              "cloning/spotify/drake mix/Best-I-Ever-Had.jpg", "Drake ", "Best I Ever Had"),
          PLaylistTrack("cloning/spotify/drake mix/redrum.jpg", "21 Savage", "redrum"),
          PLaylistTrack("cloning/spotify/drake mix/Trophies.jpg", "Young Money", "Trophies"),
          PLaylistTrack(
              "cloning/spotify/drake mix/Surround-Sound-(feat. 21 Savage).jpg",
              "JID, 21 Savage, Baby Tate",
              "Surround Sound (feat. 21 Savage & Baby Tate)"),
          PLaylistTrack("cloning/spotify/drake mix/IDGAF-(feat. Yeat).jpg", "Drake, Yeat",
              "IDGAF (feat. Yeat)"),
        ],
      );
    } else if (mix == "Upbeat") {
      return Playlist(
        "35 min",
        [
          PLaylistTrack("cloning/spotify/upbeat/Calm-Down-(with Selena Gomez).jpg",
              "Rema, Selena Gomez ", "Calm Down (with Selena Gomez)"),
          PLaylistTrack("cloning/spotify/upbeat/Feather.jpg", "Sabrina Carpenter", "Feather"),
          PLaylistTrack(
              "cloning/spotify/upbeat/I'm-Good-(Blue).jpg", "David Guetta", "I'm Good (Blue)"),
          PLaylistTrack("cloning/spotify/upbeat/Uptown-Funk-(feat. Bruno Mars).jpg",
              "Mark Ronson, Bruno Mars", "Uptown Funk (feat. Bruno Mars)"),
          PLaylistTrack(
              "cloning/spotify/upbeat/High-Hopes.jpg", "Panic! At The Disco", "High Hopes"),
          PLaylistTrack(
              "cloning/spotify/upbeat/Cake-By-The-Ocean.jpg", "DNCE", "Cake By The Ocean"),
          PLaylistTrack("cloning/spotify/upbeat/Better-When-I'm-Dancin'.jpg", "Meghan Trainor",
              "Better When I'm Dancin'"),
          PLaylistTrack("cloning/spotify/upbeat/What-You-Know.jpg", "Two Door Cinema Club",
              "What You Know"),
          PLaylistTrack("cloning/spotify/upbeat/Walking-On-Sunshine.jpg", "Katrina & The Waves",
              "Walking On Sunshine"),
          PLaylistTrack("cloning/spotify/upbeat/Shut-Up-and-Dance.jpg", "WALK THE MOON",
              "Shut Up and Dance"),
          PLaylistTrack("cloning/spotify/upbeat/Feliz,-Alegre-e-Forte.jpg", "Marisa Monte",
              "Feliz, Alegre e Forte"),
          PLaylistTrack(
              "upbeat/Lil-Boo-Thang.jpg", "Paul Russell", "Lil Boo Thang"),
          PLaylistTrack("cloning/spotify/upbeat/Classic.jpg", "MKTO ", "Classic"),
          PLaylistTrack("cloning/spotify/upbeat/Me-Levanté.jpg", "Dave Bolaño", "Me Levanté"),
          PLaylistTrack(
              "cloning/spotify/upbeat/Feel-It-Still.jpg", "Portugal. The Man", "Feel It Still"),
        ],
      );
    } else if (mix == "Chill") {
      return Playlist(
        "45 min",
        [
          PLaylistTrack(
              "cloning/spotify/chill/Shut-up.jpg", "Hotel Ugly ", "Shut up My Moms Calling"),
          PLaylistTrack("cloning/spotify/chill/Stick-Season.jpg", "Noah Kahan", "Stick Season"),
          PLaylistTrack("cloning/spotify/chill/Dark-Red.jpg", "Steve Lacy", "Dark Red"),
          PLaylistTrack(
              "cloning/spotify/chill/Sunset-Lover.jpg", "Petit Biscuit", "Sunset Lover"),
          PLaylistTrack("cloning/spotify/chill/Hex.jpg", "80purppp", "Hex"),
          PLaylistTrack(
              "cloning/spotify/chill/Japanese-Denim.jpg", "Daniel Caesar", "Japanese Denim"),
          PLaylistTrack(
              "cloning/spotify/chill/Yebba’s-Heartbreak.jpg", "Drake ", "Yebba’s Heartbreak"),
          PLaylistTrack("cloning/spotify/chill/Location.jpg", "Khalid ", "Location"),
          PLaylistTrack("cloning/spotify/chill/Ivy.jpg", "Frank Ocean", "Ivy"),
          PLaylistTrack("cloning/spotify/chill/act-ii_date.jpg", "4batz ", "act ii: date @ 8"),
          PLaylistTrack("cloning/spotify/chill/Get-You-(feat. Kali Uchis).jpg", "Daniel Caesar",
              "cloning/spotify/chill/Get You (feat. Kali Uchis)"),
          PLaylistTrack("cloning/spotify/chill/comethru.jpg", "Jeremy Zucker", "comethru"),
          PLaylistTrack("cloning/spotify/chill/Come-Back-to-Earth.jpg", "Mac Miller",
              "Come Back to Earth"),
          PLaylistTrack("cloning/spotify/chill/Some.jpg", "Steve Lacy", "Some"),
        ],
      );
    } else if (mix == "2010") {
      return Playlist(
        "1h 2min",
        [
          PLaylistTrack("cloning/spotify/2010/I-Love-You-So.jpg", "The Walters", "Love You So"),
          PLaylistTrack("cloning/spotify/2010/See-You-Again-(feat. Kali Uchis).jpg",
              "Tyler, The Creator", "See You Again (feat. Kali Uchis)"),
          PLaylistTrack(
              "cloning/spotify/2010/Sunflower - Spider-Man_ Into-the-Spider-Verse.jpg",
              "Post Malone",
              "Sunflower - Spider-Man: Into the Spider-Verse"),
          PLaylistTrack(
              "cloning/spotify/2010/Cruel-Summer.jpg", "Taylor Swift", "Cruel Summer"),
          PLaylistTrack(
              "cloning/spotify/2010/The-Night-We-Met.jpg", "Lord Huron", "The Night We Met"),
          PLaylistTrack("cloning/spotify/2010/Starboy.jpg", "The Weeknd", "Starboy"),
          PLaylistTrack("cloning/spotify/2010/No-Role-Modelz.jpg", "J. Cole", "No Role Modelz"),
          PLaylistTrack("cloning/spotify/2010/One-Dance.jpg", "Drake", "One Dance"),
          PLaylistTrack("cloning/spotify/2010/Pink-White.jpg", "Frank Ocean", "Pink + White"),
          PLaylistTrack("cloning/spotify/2010/Lover.jpg", "Taylor Swift", "Lover"),
          PLaylistTrack("cloning/spotify/2010/Perfect.jpg", "Ed Sheeran", "Perfect"),
          PLaylistTrack("cloning/spotify/2010/Dandelions.jpg", "Ruth B.", "Dandelions"),
          PLaylistTrack("cloning/spotify/2010/Dark-Red.jpg", "Steve Lacy", "Dark Red"),
          PLaylistTrack("cloning/spotify/2010/Not-Allowed.jpg", "TV Girl", "Not Allowed"),
          PLaylistTrack("cloning/spotify/2010/Evergreen.jpg", "Richy Mitch & The Coal Miners",
              "Evergreen"),
        ],
      );
    } else {
      return Playlist(
        "NULL",
        [],
      );
    }
  }
}
