import 'package:e_reciept/data/remote/repository/user_repository.dart';
import 'package:e_reciept/domain/model/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
        title: const Text('Upcoming Users'),
      ),
      body: FutureBuilder<List<User>>(
        future: userRepo.getUpcomingUsers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasError) {
            // Handle error case
            print('Data: $snapshot.data!.firstName');
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else if (snapshot.hasData) {
            // Build your UI with the received data
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(snapshot.data![index].firstName),
              ),
            );
          } else {
            // Handle other cases
            return const SizedBox(); // Return an empty widget or handle as needed
          }
        },
      ),
    );
  }
}
