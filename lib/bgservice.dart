// import 'dart:async';
// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:flutter_background_service/flutter_background_service.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:path/path.dart' as p;
//
// late File dataFile;
// Timer bgEventTimer = Timer.periodic(const Duration(seconds: 15),
//     (timer) {}); // without a function, so it is actually cancelled
//
// Future main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   //
//   // get the file path
//   Directory dir = await getApplicationDocumentsDirectory();
//   dataFile = File(p.join(dir.path, 'bgData.txt'));
//   //
//   await initializeBackgroundService();
//   //
//   runApp(const MyApp());
// }
//
// Future<void> initializeBackgroundService() async {
//   final backgroundService = FlutterBackgroundService();
//   await backgroundService.configure(
//     androidConfiguration: AndroidConfiguration(
//       // auto start service
//       autoStart: true,
//       // this will executed when app is in foreground or background in separated isolate
//       onStart: onBackgroundStart,
//       // true means that notification arte visible
//       isForegroundMode: true,
//     ),
//     iosConfiguration: IosConfiguration(
//       // auto start service
//       autoStart: true,
//       // this will executed when app is in foreground in separated isolate
//       onForeground: onBackgroundStart,
//       // you have to enable background fetch capability on xcode project
//       onBackground: onBackgroundStart,
//     ),
//   );
// }
//
// void onBackgroundStart() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   bgEventTimer.cancel(); // just in case we were still running
//   final backgroundService = FlutterBackgroundService();
//   Directory dir = await getApplicationDocumentsDirectory();
//   File bgDataFile = File(p.join(dir.path, 'bgData.txt'));
//   // just in case we started without a bgData file....
//   if (bgDataFile.existsSync() == false) {
//     backgroundService
//         .stopBackgroundService(); // just exit the background service
//     return;
//   }
//   //
//   // start our timer job (after we defined it)
//   //
//   void bgTimerJob() async {}
//   //
//   bgEventTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
//     bgTimerJob();
//   });
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Path Provider test',
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//       ),
//       home: const MyHomePage(title: 'Path Provider test'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//   final String title;
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> with WidgetsBindingObserver {
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     WidgetsBinding.instance.removeObserver(this);
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Stack(),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
