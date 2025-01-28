// uygulamada sayfalari ve navigasyon islemlerini burada tanimlicaz

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:haykolig/screens/detaill.dart';
import 'package:haykolig/screens/home.dart';
import 'package:haykolig/screens/profile.dart';
import 'package:haykolig/widgets/matchCard.dart';

// Router yapılandırması
final router = GoRouter(
  initialLocation: '/home', // Başlangıç rotası
  routes: [
    GoRoute(
      path: '/home',
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const HomeScreen(),
      ),
    ),
    GoRoute(
      path: '/detail',
      builder: (context, state) {
        final extra = state.extra as Map<String, dynamic>?;

        return DetailScreen(
          title: extra?['title'],
          team1: extra?['team1'],
          team2: extra?['team2'],
          matchDate: extra?['matchDate'],
          stadium: extra?['stadium'],
          comments: extra?['comments'],
          recentScores: extra?['recentScores'],
        );
      },
    ),
    GoRoute(
      path: '/profile',
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: ProfileScreen(),
      ),
    ),
  ],
);
