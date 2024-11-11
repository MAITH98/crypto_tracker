import 'package:crypto_tracker/shared/components/header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  // Using GetX to manage the theme mode state
  Rx<ThemeMode> themeMode = ThemeMode.light.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F8FF), // Light bluish background
      body: Column(
        children: [
          const CustomAppBar(),
          // Wrapping everything inside a SingleChildScrollView to make content scrollable
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  // Theme Mode Display Section
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 8,
                    shadowColor: Colors.black.withOpacity(0.1),
                    color: Colors.white,
                    child: ListTile(
                      leading: const Icon(
                        Icons.brightness_6,
                        color: Color(0xFF1FABF1), // Bluish color for icon
                      ),
                      title: const Text(
                        'Theme Mode',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      trailing: Text(
                        // Display the theme mode as text (e.g., Light Mode)
                        themeMode.value == ThemeMode.light
                            ? 'Light Mode'
                            : themeMode.value == ThemeMode.dark
                                ? 'Dark Mode'
                                : 'System Default',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Section with extra info
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 8,
                    shadowColor: Colors.black.withOpacity(0.1),
                    color: Colors.white,
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Project Details',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'This is a crypto tracker application that allows users to monitor cryptocurrency prices in real-time. It fetches data from the CoinGecko API and provides various options to toggle between different theme modes.',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Another Section (You can customize more as per need)
                  SizedBox(
                    width: double.infinity,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: 8,
                      shadowColor: Colors.black.withOpacity(0.1),
                      color: Colors.white,
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'App Version',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Version 1.0.0',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
