import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data/remote/repository/user_repository.dart';
import '../utils/navigation_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final userRepo = Provider.of<UserRepository>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Write a "Title" here'),
        backgroundColor: Colors.blue,
      ),
      drawer: const SideBarMenu(),
      body: FutureBuilder(
        future: userRepo.getUpcomingUsers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const LinearProgressIndicator(); // Loading indicator while waiting
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else if (snapshot.hasData) {
            return ListView(
              children: List.generate(
                snapshot.data!.length,
                (index) => ListTile(
                  title: Text(snapshot.data![index].firstName),
                ),
              ),
            );
          } else {
            return const Text('No data available.'); // Handle no data scenario
          }
        },
      ),
    );
  }
}
