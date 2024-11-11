import 'package:crypto_tracker/shared/components/header.dart';
import 'package:flutter/material.dart';

class CreditsScreen extends StatelessWidget {
  const CreditsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomAppBar(),
          Expanded(
            child: Scrollbar(
              thumbVisibility: true, // Makes the thumb visible always
              trackVisibility: true, // Makes the track visible always
              thickness: 4.0,

              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Credits & Project Information',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: 16),
                    const Divider(),
                    const SizedBox(height: 16),

                    // Developer Section
                    _buildSectionTitle(context, '1. Main Developer'),
                    const SizedBox(height: 8),
                    _buildDeveloperInfo(context),
                    const SizedBox(height: 16),

                    // Project Details Section
                    _buildSectionTitle(context, '2. Project Information'),
                    const SizedBox(height: 8),
                    _buildProjectDetails(context),
                    const SizedBox(height: 16),

                    // Libraries Section
                    _buildSectionTitle(context, '3. Libraries and Tools Used'),
                    const SizedBox(height: 8),
                    _buildLibrariesList(context),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Builds Section Title with a clean formal style
  Widget _buildSectionTitle(BuildContext context, String title) {
    return Text(
      title,
      style: Theme.of(context).textTheme.labelLarge,
    );
  }

  // Developer Info Section with formal card styling
  Widget _buildDeveloperInfo(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'MAITHA AL AMRI \nFlutter Developer, Lead Developer, responsible for building the app, integrating APIs, and designing UI.\n',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                color: const Color.fromARGB(255, 145, 186, 194),
                fontWeight: FontWeight.w400),
          ),
          Text(
            'Portfolio: ',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                color: const Color.fromARGB(255, 145, 186, 194),
                fontWeight: FontWeight.w400),
          ),
          InkWell(
            onTap: () {
              _launchURL('https://www.maitha.dev/light');
            },
            child: Text(
              'www.maitha.dev/light',
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  fontWeight: FontWeight.w400, color: Colors.black45),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'GitHub: ',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                color: const Color.fromARGB(255, 145, 186, 194),
                fontWeight: FontWeight.w400),
          ),
          InkWell(
            onTap: () {
              _launchURL('https://github.com/MAITH98');
            },
            child: Text(
              'github.com/MAITH98',
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  fontWeight: FontWeight.w400, color: Colors.black45),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'LinkedIn: ',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                color: const Color.fromARGB(255, 145, 186, 194),
                fontWeight: FontWeight.w400),
          ),
          InkWell(
            onTap: () {
              _launchURL('https://www.linkedin.com/in/maithaalamri');
            },
            child: Text(
              'www.linkedin.com/in/maithaalamri',
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  fontWeight: FontWeight.w400, color: Colors.black45),
            ),
          ),
        ],
      ),
    );
  }

  // Project Information Section with consistent style
  Widget _buildProjectDetails(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        'This project, Crypto Tracker, is a Flutter-based mobile application designed to track cryptocurrency prices and market data. '
        'The app fetches real-time data from the CoinGecko API, allowing users to monitor cryptocurrency trends such as price, market cap, and volume.\n\n'
        'Features include:\n'
        '- Real-time cryptocurrency price tracking.\n'
        '- Historical data such as all-time highs and lows.\n'
        '- Market cap and volume statistics.\n\n'
        'The app is built using Flutter, leveraging state management with GetX for efficient and responsive UI rendering.',
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
              fontWeight: FontWeight.w400,
              color: const Color.fromARGB(255, 145, 186, 194),
            ),
      ),
    );
  }

  // Libraries Section with consistent formatting
  Widget _buildLibrariesList(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLibraryItem(context, 'Flutter', 'https://flutter.dev',
            'Framework for building natively compiled applications.'),
        _buildLibraryItem(context, 'GetX', 'https://pub.dev/packages/get',
            'State management and route management library for Flutter.'),
        _buildLibraryItem(context, 'http', 'https://pub.dev/packages/http',
            'Package to make HTTP requests.'),
        _buildLibraryItem(
            context,
            'Google Fonts',
            'https://pub.dev/packages/google_fonts',
            'Custom fonts for beautiful typography.'),
        _buildLibraryItem(
            context,
            'Cupertino Icons',
            'https://pub.dev/packages/cupertino_icons',
            'Provides iOS-style icons.'),
        // Add more libraries as necessary
      ],
    );
  }

  // Builds a Library Item with link and description in a clean format
  Widget _buildLibraryItem(BuildContext context, String libraryName,
      String link, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          const Icon(
            Icons.arrow_forward,
            size: 16,
            color: Color(0xFF1FABF1), // Bluish color for the arrow icon
          ),
          const SizedBox(width: 8),
          InkWell(
            onTap: () {
              _launchURL(link);
            },
            child: Text(
              libraryName,
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    fontWeight: FontWeight.w400,
                    color: const Color.fromARGB(255, 145, 186, 194),
                  ),
            ),
          ),
          const SizedBox(width: 8),
          // Make description horizontally scrollable if needed
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Text(
                '- $description',
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      fontWeight: FontWeight.w400,
                      color: Colors.black45,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Function to launch a URL (make sure to use url_launcher or similar in production)
  void _launchURL(String url) {
    // You can use the `url_launcher` package to open URLs in a web browser.
    // Example:
    // launch(url);
    print('Opening $url'); // Replace with real URL launch logic
  }
}
