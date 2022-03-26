import 'package:flutter/material.dart';
import 'package:umberto/screens/chatt_part_page.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      tools: [...DevicePreview.defaultTools],
      builder: (context) => App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: ChartPartPage(
        true,
        'https://picsum.photos/200/300',
        'Burak',
        12,
        'Hi there can we meet ?',
        '2.05',
      ),
    );
  }
}
