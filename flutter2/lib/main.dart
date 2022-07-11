import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Tabs Demo';

    return MaterialApp(
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              bottom: const TabBar(tabs: [
                Tab(icon: Icon(Icons.abc_outlined)),
                Tab(icon: Icon(Icons.accessibility_new_outlined)),
                Tab(icon: Icon(Icons.add_comment_rounded))
              ]),
              title: const Text(appTitle),
            ),
            body: const TabBarView(children: [
              FirstPage(),
              Icon(Icons.accessibility_new_outlined),
              Icon(Icons.add_comment_rounded),
            ]),
          )),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      'First Page',
      style: TextStyle(fontFamily: 'Dokdo'),
    ));
  }
}
