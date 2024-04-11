import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:provider/provider.dart';
import 'package:wiki_flutter_examples/cloning/spotify/ui/lyrics_section.dart';
import 'package:wiki_flutter_examples/cloning/spotify/ui/song_control_screen.dart';
import 'package:wiki_flutter_examples/package/20231025/fl_chart.dart';
import 'package:wiki_flutter_examples/widget/20210123/lib/20210123.dart';
import 'package:wiki_flutter_examples/widget/20230602/draggable.dart';
import 'package:wiki_flutter_examples/widget/20231213/lib/20231213.dart';

import 'cloning/ecommerce/shoeappui/pages/home_page.dart';
import 'cloning/ecommerce/shoeappui/providers/counter_provider.dart';
import 'cloning/ecommerce/stackss_practical/model/controller.dart';
import 'cloning/ecommerce/stackss_practical/screen/home_page.dart';
import 'cloning/ecommerce/stackss_practical/screen/search.dart';
import 'cloning/ecommerce/stackss_practical/screen/user_add.dart';
import 'cloning/ecommerce/stackss_practical/screen/user_message.dart';
import 'cloning/ecommerce/stackss_practical/screen/user_profile.dart';
// import 'cloning/nike/pages/homepage.dart';
import 'cloning/spotify/data/model/album.dart';
import 'cloning/spotify/data/model/album_track.dart';
import 'cloning/spotify/di/service_locator.dart';
import 'cloning/spotify/ui/album_control_screen.dart';
import 'cloning/spotify/ui/album_radio_screen.dart';
import 'cloning/spotify/ui/albumview_screen.dart';
import 'cloning/spotify/ui/listening_on_screen.dart';
import 'cloning/spotify/ui/lyrics_screen.dart';
import 'cloning/spotify/ui/splash_screen.dart';
import 'cloning/spotify/ui/track_view_screen.dart';
import 'package/20231011/counterprovider/main_counterprovider.dart';
import 'package/20231011/userprovider/main_userprovider.dart';

/* basic + spotify */
void main() {
  // Test 시 아래 2줄은 주석 처리 필요
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  initServiceLocator();
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

    // return MaterialApp(
    //     title: 'Widget Examples',
    //     theme: ThemeData(
    //       colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //       useMaterial3: true,
    //     ),
    //     home: AlbumViewScreen(),);
    return MaterialApp(
      theme: ThemeData(
        splashColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
/* E-Commerce:stackss_practical */
// void main() {
//   runApp(const ProviderScope(child: MyApp()));
// }
//
// class MyApp extends HookConsumerWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData.light(),
//       darkTheme: ThemeData.dark(),
//       themeMode:
//       ref.watch(appController).darkMode ? ThemeMode.dark : ThemeMode.light,
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends HookConsumerWidget {
//   MyHomePage({super.key});
//
//   int _selectedIndex = 0;
//
//   final List<Widget> _children = [
//     Home(),
//     const UserSearch(),
//     const UserAdd(),
//     const UserMessage(),
//     const UserAccount()
//   ];
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     void navigateBottomNavBar(int index) {
//       // setState(() {
//       //   _selectedIndex = index;
//       // });
//       ref.read(appController.notifier).navigateBottomNavBar(index);
//     }
//
//     final state = ref.watch(appController);
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: state.primaryBackgroundColor,
//           shadowColor: null,
//           elevation: 0,
//         ),
//         body: _children[state.pageNo ?? 0],
//         bottomNavigationBar: BottomNavigationBar(
//           currentIndex: state.pageNo ?? 0,
//           type: BottomNavigationBarType.fixed,
//           onTap: navigateBottomNavBar,
//           showUnselectedLabels: false,
//           showSelectedLabels: false,
//           selectedItemColor: Colors.purple[300],
//           items: [
//             const BottomNavigationBarItem(
//                 icon: Icon(Icons.home), label: 'home'),
//             const BottomNavigationBarItem(
//                 icon: Icon(Icons.search), label: 'search'),
//             BottomNavigationBarItem(
//                 icon: Icon(
//                   CupertinoIcons.add_circled_solid,
//                   size: 40,
//                   color: Colors.purple[300],
//                 ),
//                 label: 'Upload'),
//             const BottomNavigationBarItem(
//                 icon: Icon(CupertinoIcons.mail_solid), label: 'messages'),
//             BottomNavigationBarItem(
//                 icon: Container(
//                   height: 40,
//                   width: 40,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(80),
//                     color: state.pageNo == 4 ? Colors.purple[300] : null,
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(4.0),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(80),
//                       child: Image.network(
//                         'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZCldKgmO2Hs0UGk6nRClAjATKoF9x2liYYA&usqp=CAU',
//                         fit: BoxFit.cover,
//                         height: 30,
//                         width: 30,
//                       ),
//                     ),
//                   ),
//                 ),
//                 label: 'account'),
//           ],
//         ));
//   }
// }
/* nike */
//
// void main() =>
//     runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()));
/* shoeappui */
// Future main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   // await Firebase.initializeApp();
//
//   runApp(
//     MultiProvider(
//       providers: [ChangeNotifierProvider(create: (_) => Counter())],
//       child: const MyApp(),
//     ),
//   );
// }
//
// class MyApp extends StatefulWidget {
//   const MyApp({super.key});
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   // final _auth = FirebaseAuth.instance;
//
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(fontFamily: 'Questrial'),
//       // initialRoute: _auth.currentUser == null ? '/login' : '/home',
//       // routes: {
//       //   '/login': (context) => LoginPage(),
//       //   '/home': (context) => HomePage(),
//       //   // '/phone': (context) => PhoneGetterPage(),
//       //   // '/otp': (context) => PhoneOTP(),
//       // },
//       // home: AuthService().handleAuthState(),
//       home: HomePage(),
//     );
//   }
// }