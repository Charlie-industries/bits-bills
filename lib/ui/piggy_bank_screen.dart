import 'package:flutter/material.dart';
import '../utils/navigation_drawer.dart';

class PiggyBankScreen extends StatefulWidget {
  const PiggyBankScreen({super.key});

  @override
  State<PiggyBankScreen> createState() => _PiggyBankScreenState();
}

class _PiggyBankScreenState extends State<PiggyBankScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: const SideBarMenu(),
        appBar: AppBar(
          title: const Text('Insert a "Title" here'),
          backgroundColor: Colors.blue,
        ),
        body: const Center(
          child: Text('Here goes the piggy bank'),
        ),
      );
}
