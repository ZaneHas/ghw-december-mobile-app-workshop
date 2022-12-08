import 'package:flutter/material.dart';
import 'package:device_info_plus/device_info_plus.dart';
// import 'package:english_words/english_words.dart';

Future <void> main() async {
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  AndroidDeviceInfo info = await deviceInfo.androidInfo;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Global Hack Week December',
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.deepPurpleAccent,
            foregroundColor: Colors.black,
          )
      ),
      home: const DevInfo(),
    );
  }
}

class DevInfo extends StatefulWidget {
  const DevInfo({super.key});

  @override
  State<DevInfo> createState() => _DevInfoState();
}

class _DevInfoState extends State<DevInfo> {
  //@override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Device Info')
      ),
      body: Text("Running on ${androidInfo.model}"),
    );
  }
}