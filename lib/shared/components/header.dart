import 'package:crypto_tracker/features/Credentials/View/credits_screen.dart';
import 'package:crypto_tracker/features/Settings/View/settings_screen.dart';
import 'package:crypto_tracker/features/home/View/home_screen.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final List<Widget>? actions;
  final bool isDarkMode;

  const CustomAppBar({
    super.key,
    this.actions,
    this.isDarkMode = false,
  });

  void _openSideNavigation(BuildContext context) {
    final AnimationController animationController = AnimationController(
      duration: const Duration(milliseconds: 400),
      vsync: Navigator.of(context),
    );

    final Animation<Offset> slideAnimation = Tween<Offset>(
      begin: const Offset(1.0, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.easeInOut,
    ));

    animationController.forward(); // Trigger slide animation

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return GestureDetector(
          onTap: () {
            Navigator.pop(context); // Close when tapping outside
          },
          child: Stack(
            children: [
              // Dimmed background for smooth interaction
              Container(
                color: Colors.black.withOpacity(0.1), // Lighter dim effect
              ),
              Positioned(
                right: 0,
                top: 0,
                child: SlideTransition(
                  position: slideAnimation,
                  child: Material(
                    color: Colors.transparent,
                    child: Container(
                      width: 280,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Colors.white, // Pastel Peach
                            Color(0x301FABF1), // Bluish pastel
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.1),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(30),
                              ),
                            ),
                            child: const Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/tokentrac.png'),
                                  radius: 30,
                                ),
                                SizedBox(width: 16),
                                Text(
                                  'Navigation',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Divider(color: Colors.white), // Subtle divider
                          Expanded(
                            child: ListView(
                              padding: const EdgeInsets.all(0),
                              children: [
                                ListTile(
                                  leading: const Icon(Icons.home,
                                      color: Colors.black),
                                  title: const Text(
                                    'Home',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  onTap: () {
                                    Navigator.pop(context);
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              HomeScreen()), // Navigate to HomeScreen
                                    );
                                  },
                                ),
                                ListTile(
                                  leading: const Icon(Icons.settings,
                                      color: Colors.black),
                                  title: const Text(
                                    'Settings',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  onTap: () {
                                    Navigator.pop(context);
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const SettingsScreen()));
                                  },
                                ),
                                ListTile(
                                  leading: const Icon(Icons.lock,
                                      color: Colors.black),
                                  title: const Text(
                                    'Credentials',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  onTap: () {
                                    Navigator.pop(context);
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const CreditsScreen()),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color(0x301FABF1),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(30),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/tokentrac.png',
                  height: 60,
                  width: 60,
                  fit: BoxFit.contain,
                ),
                const SizedBox(width: 12),
                const Text(
                  'TokenTrac',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.menu,
              color: isDarkMode ? Colors.white : Colors.black,
            ),
            onPressed: () {
              _openSideNavigation(context);
            },
          ),
        ],
      ),
    );
  }
}
