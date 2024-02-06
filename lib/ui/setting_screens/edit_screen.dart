import 'package:e_reciept/utils/edit_item.dart';
import 'package:flutter/material.dart';

class EditAccountScreen extends StatefulWidget {
  const EditAccountScreen({super.key});

  @override
  State<EditAccountScreen> createState() => _EditAccountScreenState();
}

class _EditAccountScreenState extends State<EditAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.chevron_left,
          ),
        ),
        leadingWidth: 80,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              style: IconButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                fixedSize: const Size(60, 50),
                elevation: 3,
              ),
              icon: const Icon(
                Icons.check,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Account',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              EditItem(
                title: 'Photo',
                widget: Column(
                  children: [
                    Image.asset(
                      'images/avatar.png',
                      height: 100,
                      width: 100,
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.lightBlueAccent),
                      child: const Text('Upload Image'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const EditItem(
                widget: TextField(),
                title: 'First Name',
              ),
              const SizedBox(height: 20),
              const EditItem(
                widget: TextField(),
                title: 'Last Name',
              ),
              const SizedBox(height: 20),
              const EditItem(
                widget: TextField(),
                title: 'User Name',
              ),
              const SizedBox(height: 20),
              const EditItem(
                widget: TextField(),
                title: 'Email',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
