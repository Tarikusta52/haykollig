import 'package:flutter/material.dart';
import 'package:haykolig/core/routes.dart';
import 'package:haykolig/screens/editProfile.dart';
import 'package:haykolig/widgets/bottomNavigation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late SharedPreferences _prefs;
  String _username = "KloZed52";
  String _email = "tarik.ustaoglu112@gmail.com";
  String _password = "";

  @override
  void initState() {
    super.initState();
    _loadProfileData();
  }

  Future<void> _loadProfileData() async {
    _prefs = await SharedPreferences.getInstance();
    setState(() {
      _username = _prefs.getString('username') ?? "KloZed52";
      _email = _prefs.getString('email') ?? "tarik.ustaoglu112@gmail.com";
      _password = _prefs.getString('password') ?? "";
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              theme.colorScheme.primary,
                              theme.colorScheme.primaryContainer,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 140,
                        left: MediaQuery.of(context).size.width / 2 - 60,
                        child: CircleAvatar(
                          radius: 60,
                          backgroundColor: theme.colorScheme.background,
                          child: CircleAvatar(
                            radius: 55,
                            backgroundColor: theme.colorScheme.secondary,
                            child: Icon(
                              Icons.person,
                              size: 55,
                              color: theme.colorScheme.onSecondary,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 80),
                  Text(
                    _username,
                    style: theme.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: theme.colorScheme.onBackground,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    _email,
                    style: theme.textTheme.labelSmall?.copyWith(
                      fontWeight: FontWeight.normal,
                      color: theme.colorScheme.onBackground.withOpacity(0.7),
                    ),
                  ),
                  SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        _buildActionButton(
                          context,
                          text: "Profili Düzenle",
                          onPressed: () {
                            context.push("/editProfile");
                          },
                        ),
                        SizedBox(height: 16),
                        _buildActionButton(
                          context,
                          text: "Çıkış Yap",
                          onPressed: () {},
                          isDestructive: true,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            BottomNavigation(),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton(BuildContext context,
      {required String text,
      required VoidCallback onPressed,
      bool isDestructive = false}) {
    final theme = Theme.of(context);
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 50),
        backgroundColor:
            isDestructive ? theme.colorScheme.error : theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: theme.textTheme.labelLarge?.copyWith(
          fontWeight: FontWeight.bold,
          color: isDestructive ? Colors.white : theme.colorScheme.onPrimary,
        ),
      ),
    );
  }
}
