import 'package:flutter/material.dart';
import '../utils/navigation_drawer.dart';

class FolderScreen extends StatefulWidget {
  const FolderScreen({super.key});

  @override
  State<FolderScreen> createState() => _FolderScreenState();
}

class _FolderScreenState extends State<FolderScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: const SideBarMenu(),
        appBar: AppBar(
          title: const Text('Insert a "Title" here'),
          backgroundColor: Colors.blue,
        ),
        body: const Center(
          child: Text('Here goes the bills folders'),
        ),
      );
}
