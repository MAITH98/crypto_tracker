import 'package:flutter/material.dart';
import 'package:crypto_tracker/shared/components/header.dart'; // Custom AppBar widget

class CreditsScreen extends StatelessWidget {
  const CreditsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomAppBar(), // Custom header bar at the top
          // Use Expanded or SingleChildScrollView to make sure content is scrollable
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                children: [
                  // Section for Credits Title
                  const Text(
                    'Credits & Project Information',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Developer Section
                  _buildSectionTitle('Main Developer:'),
                  const SizedBox(height: 8),
                  _buildDeveloperInfo(),
                  const SizedBox(height: 20),

                  // Project Details Section
                  _buildSectionTitle('Project Information:'),
                  const SizedBox(height: 8),
                  _buildProjectDetails(),
                  const SizedBox(height: 20),

                  // Libraries Section
                  _buildSectionTitle('Libraries and Tools Used:'),
                  const SizedBox(height: 8),
                  _buildLibrariesList(),
                  const SizedBox(height: 20),

                  // Asset Credits Section
                  _buildSectionTitle('Asset Credits:'),
                  const SizedBox(height: 8),
                  _buildAssetCredits(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Builds Section Title with Bluish Color
  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Color(0xFF1FABF1), // Bluish color for section headers
      ),
    );
  }

  // Developer Info Section with Card Styling
  Widget _buildDeveloperInfo() {
    return Card(
      color: Colors.white,
      elevation: 8,
      shadowColor: Colors.black.withOpacity(0.1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          'MAITHA AL AMRI - Flutter Developer\n'
          'Lead Developer, responsible for building the app, integrating APIs, and designing UI.',
          style: TextStyle(fontSize: 16, color: Colors.black87),
        ),
      ),
    );
  }

  // Project Information Section
  Widget _buildProjectDetails() {
    return const Text(
      'This project, Crypto Tracker, is a Flutter-based mobile application designed to track cryptocurrency prices and market data. '
      'The app fetches real-time data from the CoinGecko API, allowing users to monitor cryptocurrency trends such as price, market cap, and volume.\n\n'
      'Features include:\n'
      '- Real-time cryptocurrency price tracking.\n'
      '- Historical data such as all-time highs and lows.\n'
      '- Market cap and volume statistics.\n\n'
      'The app is built using Flutter, leveraging state management with GetX for efficient and responsive UI rendering.',
      style: TextStyle(fontSize: 16, color: Colors.black87),
    );
  }

  // Libraries Section
  Widget _buildLibrariesList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLibraryItem('Flutter', 'https://flutter.dev',
            'Framework for building natively compiled applications.'),
        _buildLibraryItem('GetX', 'https://pub.dev/packages/get',
            'State management and route management library for Flutter.'),
        _buildLibraryItem('http', 'https://pub.dev/packages/http',
            'Package to make HTTP requests.'),
        _buildLibraryItem(
            'Google Fonts',
            'https://pub.dev/packages/google_fonts',
            'Custom fonts for beautiful typography.'),
        _buildLibraryItem(
            'Cupertino Icons',
            'https://pub.dev/packages/cupertino_icons',
            'Provides iOS-style icons.'),
        // Add any additional libraries here
      ],
    );
  }

  // Asset Credits Section
  Widget _buildAssetCredits() {
    return const Text(
      'Logo Icon: TokenTrac logo by [Author Name], used under [license].\n'
      'Images: Free image resources from [source].',
      style: TextStyle(fontSize: 16, color: Colors.black54),
    );
  }

  // Builds a Library Item with link and description
  Widget _buildLibraryItem(
      String libraryName, String link, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          const Icon(
            Icons.arrow_forward,
            size: 20,
            color: Color(0xFF1FABF1), // Bluish color for the arrow icon
          ),
          const SizedBox(width: 8),
          InkWell(
            onTap: () {
              _launchURL(link);
            },
            child: Text(
              libraryName,
              style: const TextStyle(
                color: Color(0xFF1FABF1), // Bluish color for the link
                fontSize: 16,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          const SizedBox(width: 8),
          // Make description horizontally scrollable
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Text(
                '- $description',
                style: const TextStyle(fontSize: 14, color: Colors.black54),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Function to launch a URL
  void _launchURL(String url) {
    // You can use the `url_launcher` package to open URLs in a web browser.
    // Example:
    // launch(url);
    print('Opening $url'); // Replace with real URL launch logic
  }
}
