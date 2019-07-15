import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scrolller',
      theme: ThemeData(
        fontFamily: 'Raleway',
      ),
      home: MyHomePage(title: 'Scrolller'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({this.title});
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: "https://www.scrolller.com",
      withJavascript: true,
      enableAppScheme: true,
      withLocalStorage: true,
      appCacheEnabled: true,
      appBar: AppBar(
        title: Center(
            child: Text(
          "Scrolller",
          style: TextStyle(fontStyle: FontStyle.italic),
        )),
        backgroundColor: Color.fromRGBO(27, 37, 47, 1),
      ),
    );
  }
}
