import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Localisation tool',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(title: 'Localisation tool'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: false,
        actions: [
          IconButton(onPressed: () {}, tooltip:"Create new", icon: const Icon(Icons.create_new_folder_rounded)),
          IconButton(onPressed: () {}, tooltip:"Open existing", icon: const Icon(Icons.folder_open_outlined)),
          IconButton(onPressed: () {}, tooltip:"Import file", icon: const Icon(Icons.upload_file)),
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Export',
        child: Icon(Icons.file_download_sharp),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
