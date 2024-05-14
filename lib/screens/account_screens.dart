import 'package:flutter/material.dart';

import 'package:ionicons/ionicons.dart';
import 'package:setting/screens/edit_screen.dart';
import 'package:setting/widgets/forward_button.dart';
import 'package:setting/widgets/setting_switch.dart';
import 'package:setting/widgets/settings_items.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Ionicons.chevron_back_outline),
        ),
        leadingWidth: 80,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Padding(padding: EdgeInsets.symmetric(vertical: 30)),
            const Text(
              "Setting",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              "Account",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: Row(
                children: [
                  Image.asset("lib/assets/avatar.png", width: 70, height: 70),
                  const SizedBox(width: 20),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "User Code",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Software Engineer",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  forwardButton(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const EditAccountScreen()));
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              "Settings",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 36),
            SettingSwitch(
              title: 'DarkMode',
              icon: Ionicons.earth,
              bgColor: Colors.purple.shade100,
              iconColor: Colors.purple,
              value: isDarkMode,
              onTap: () {},
            ),

            const SizedBox(height: 20),
            SettingItem(
              title: 'Language',
              icon: Ionicons.earth,
              bgColor: Colors.red.shade100,
              iconColor: Colors.orange,
              value: "English",
              
              onTap: () {},
            ),
            const SizedBox(height: 30),
            SettingItem(
              title: 'Notifications',
              icon: Ionicons.notifications,
              bgColor: Colors.red.shade100,
              iconColor: Colors.red,
              // value: "Alrets",
              onTap: () {},
            ),

            const SizedBox(height: 20),
            SettingItem(
              title: 'Help',
              icon: Ionicons.nuclear,
              bgColor: Colors.red.shade100,
              iconColor: Colors.red,
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
