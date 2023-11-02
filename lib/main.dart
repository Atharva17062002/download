import 'package:download/download.dart';
import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';

import 'home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterDownloader.initialize(debug: true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final platform = Theme.of(context).platform;

    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: ImageDownloaderApp());
  }
}

// import 'dart:async';
// import 'dart:io';
// import 'dart:ui';
//
// import 'package:flutter/material.dart';
// import 'package:path/path.dart' as p;
// import 'package:flutter_background_service/flutter_background_service.dart';
// import 'package:path_provider/path_provider.dart';
// import 'file_listing_screen.dart';
// import 'package:flutter_downloader/flutter_downloader.dart';
//
// Timer bgEventTimer = Timer.periodic(const Duration(seconds: 15), (timer) {});
//
// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   // DartPluginRegistrant.ensureInitialized();
//   // await initializeBackgroundService();
//
//   // Plugin must be initialized before using
//   await FlutterDownloader.initialize(
//       debug:
//           false, // optional: set to false to disable printing logs to console (default: true)
//       ignoreSsl:
//           true // option: set to false to disable working with http links (default: false)
//       );
//   runApp(MyApp());
// }
//
// Future<void> initializeBackgroundService() async {
//   final backgroundService = FlutterBackgroundService();
//   await backgroundService.configure(
//     androidConfiguration: AndroidConfiguration(
//       autoStart: true,
//       onStart: onBackgroundStart,
//       isForegroundMode: true,
//     ),
//     iosConfiguration: IosConfiguration(
//       autoStart: true,
//       onForeground: onBackgroundStart,
//       onBackground: onBackgroundStart,
//     ),
//   );
// }
//
// late var path;
//
// Future<bool> onBackgroundStart(ServiceInstance serviceInstance) async {
//   WidgetsFlutterBinding.ensureInitialized();
//   bgEventTimer.cancel(); // Stop the timer if it's running
//   Directory dir = await getApplicationDocumentsDirectory();
//   path = dir.path;
//   if (!path.existsSync()) {
//     BackgroundFetch.stop();
//     return false; // Indicate failure
//   }
//
//   void bgTimerJob() async {
//     // Your background job logic here
//   }
//
//   bgEventTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
//     bgTimerJob();
//   });
//
//   return true; // Indicate success
// }
//
// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});
// //
// //   // This widget is the root of your application.
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Flutter Demo',
// //       debugShowCheckedModeBanner: false,
// //       theme: ThemeData(
// //         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
// //         useMaterial3: true,
// //       ),
// //       home: FileListingScreen(),
// //     );
// //   }
// // }
