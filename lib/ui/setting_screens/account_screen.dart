import 'package:e_reciept/ui/setting_screens/edit_screen.dart';
import 'package:e_reciept/utils/foward_button.dart';
import 'package:e_reciept/utils/setting_item.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        leadingWidth: 100,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Settings',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Account',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: Row(
                  children: [
                    Image.asset(
                      'images/avatar.png',
                      width: 70,
                      height: 70,
                    ),
                    const SizedBox(height: 20),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jhon Doe',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'B&B account',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    FowardButton(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EditAccountScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                "Settings",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
              SettingItem(
                title: 'Language',
                bgColor: Colors.red.shade100,
                iconColor: Colors.red,
                icon: Icons.language_rounded,
                value: 'English',
                onTap: () {},
              ),
              const SizedBox(height: 20),
              SettingItem(
                title: 'Notifications',
                bgColor: Colors.blue.shade100,
                iconColor: Colors.blue,
                icon: Icons.notifications,
                onTap: () {},
              ),
              const SizedBox(height: 20),
              SettingItem(
                title: 'Help',
                bgColor: Colors.orange.shade100,
                iconColor: Colors.orange,
                icon: Icons.help,
                onTap: () {},
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
