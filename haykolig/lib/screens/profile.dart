import 'package:flutter/material.dart';
import 'package:haykolig/main.dart';
import 'package:haykolig/widgets/bottomNavigation.dart';

class ProfileScreen extends StatelessWidget {
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
                    // Header Area
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
                    // Profile Avatar
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
                // Username
                Text(
                  "KloZed52",
                  style: theme.textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: theme.colorScheme.onBackground,
                  ),
                ),
                SizedBox(height: 8),
                // Email
                Text(
                  "tarik.ustaoglu112@gmail.com",
                  style: theme.textTheme.labelSmall?.copyWith(
                    fontWeight: FontWeight.normal,
                    color: theme.colorScheme.onBackground.withOpacity(0.7),
                  ),
                ),
                SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _buildStatItem(
                            context,
                            label: "Takipçi",
                            value: "120",
                          ),
                          Container(
                            height: 40,
                            width: 1,
                            color:
                                theme.colorScheme.onBackground.withOpacity(0.2),
                          ),
                          _buildStatItem(
                            context,
                            label: "Takip Edilen",
                            value: "55",
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 24),
                // Buttons
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      _buildActionButton(
                        context,
                        text: "Profili Düzenle",
                        onPressed: () {
                          // Profili düzenle işlemi
                        },
                      ),
                      SizedBox(height: 16),
                      _buildActionButton(
                        context,
                        text: "Çıkış Yap",
                        onPressed: () {
                          // Çıkış yapma işlemi
                        },
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
      )),
    );
  }

  Widget _buildStatItem(BuildContext context,
      {required String label, required String value}) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Text(
          value,
          style: theme.textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: theme.colorScheme.primary,
          ),
        ),
        SizedBox(height: 4),
        Text(
          label,
          style: theme.textTheme.labelSmall?.copyWith(
            fontWeight: FontWeight.normal,
            color: theme.colorScheme.onBackground.withOpacity(0.7),
          ),
        ),
      ],
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
          color: isDestructive
              ? theme.colorScheme.onError
              : theme.colorScheme.onPrimary,
        ),
      ),
    );
  }
}
