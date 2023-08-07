import 'package:flutter/material.dart';
import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    String name = "Everyone";
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "First One",
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset(
          "assets/images/home1.png",
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: 20.0,
        ),
        GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/login");
            },
            child: Text("Hello World $name"))
      ]),
      drawer: MyDrawer(),
    );
  }
}
