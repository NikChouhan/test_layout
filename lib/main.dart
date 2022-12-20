import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test Layout',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int level = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[850],
        appBar: _builAppBar(),
        floatingActionButton: Row(
          children: [
            const SizedBox(
              width: 250,
            ),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  level += 1;
                });
              },
              backgroundColor: Color.fromARGB(255, 223, 107, 24),
              child: const Icon(Icons.remove),
            ),
            const SizedBox(
              width: 30,
            ),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  level = (level - 1).abs();
                });
              },
              backgroundColor: Color.fromARGB(255, 223, 107, 24),
              child: const Icon(Icons.add),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Column_Widget(),
        ));
  }

  // ignore: non_constant_identifier_names
  Column Column_Widget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: const [
            SizedBox(
              width: 100,
            ),
            CircleAvatar(
              backgroundImage: AssetImage(
                'assets/images/avatar.png',
              ),
              radius: 60,
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
          child: const Text(
            'NAME',
            style:
                TextStyle(color: Colors.white, fontSize: 22, letterSpacing: 2),
          ),
        ),
        const Text(
          'XYZ',
          style: TextStyle(
            color: Color.fromARGB(255, 225, 53, 6),
            fontSize: 30,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          '+- Button',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            letterSpacing: 2,
          ),
        ),
        Text(
          '$level',
          style: const TextStyle(
            color: Color.fromARGB(255, 225, 53, 6),
            fontSize: 30,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          color: Colors.grey[950],
          child: Row(
            children: [
              FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.orange[400],
                child: const Icon(
                  Icons.mail,
                  size: 30,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                '  xyz@abc.com',
                style: TextStyle(color: Colors.amber, fontSize: 18),
              )
            ],
          ),
        ),
      ],
    );
  }

  AppBar _builAppBar() {
    return AppBar(
      backgroundColor: Colors.grey[900],
      elevation: 0,
      title: const Text(
        'Test Layout',
        style: TextStyle(fontSize: 30),
      ),
      centerTitle: true,
    );
  }
}
