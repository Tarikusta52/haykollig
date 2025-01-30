import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.error,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              context.go('/home');
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.home,
                  color: Theme.of(context).iconTheme.color,
                ),
                Text(
                  "Anasayfa",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              context.go('/profile');
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.person,
                  color: Theme.of(context).iconTheme.color,
                ),
                Text(
                  "Profil",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
