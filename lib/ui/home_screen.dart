import 'package:flutter/material.dart';
import '../utils/navigation_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    //final userRepo = Provider.of<UserRepository>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Write a "Title" here'),
        backgroundColor: Colors.blue,
      ),
      drawer: const SideBarMenu(),
      body: const Center(
        child: Text('Hi'),
      ),
    );
  }
}
