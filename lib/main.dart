import 'package:flutter/material.dart';
import 'screens/about.dart';
import 'screens/characters.dart';
import 'screens/principal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Boys App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int indexNavegation = 0;
  final pages = const [Principal(), Character(), About()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The Boys'),
      ),
      body: IndexedStack(
        index: indexNavegation,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: indexNavegation,
          onTap: (index) {
            setState(() {
              indexNavegation = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: 'Personajes'),
            BottomNavigationBarItem(
                icon: Icon(Icons.slideshow), label: 'Acerca'),
          ]),
    );
  }
}
