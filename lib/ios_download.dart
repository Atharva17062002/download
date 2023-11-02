import 'package:flutter/material.dart';

class IosDownload extends StatefulWidget {
  const IosDownload({super.key});

  @override
  State<IosDownload> createState() => _IosDownloadState();
}

class _IosDownloadState extends State<IosDownload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IosDownload'),
      ),
      body: const Center(
        child: Text(
          'IosDownload is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
