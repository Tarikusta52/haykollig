import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MatchCard extends StatelessWidget {
  final Team team1;
  final Team team2;
  final String matchDate;
  final String stadium;
  final List<Comment> comments;
  final List<String> recentScores;

  const MatchCard({
    required this.team1,
    required this.team2,
    required this.matchDate,
    required this.stadium,
    required this.comments,
    required this.recentScores,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: () {
        context.push(
          '/detail',
          extra: {
            'title': 'Maç Detayı',
            'team1': team1,
            'team2': team2,
            'matchDate': matchDate,
            'stadium': stadium,
            'comments': comments,
            'recentScores': recentScores,
          },
        );
      },
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _teamInfo(context, team1),
                  Text(
                    'vs',
                    style: theme.textTheme.bodyLarge
                        ?.copyWith(fontWeight: FontWeight.w500),
                  ),
                  _teamInfo(context, team2),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                '📅 Tarih: $matchDate',
                style: theme.textTheme.bodyMedium,
              ),
              Text(
                '🏟 Stadyum: $stadium',
                style: theme.textTheme.bodyMedium,
              ),
              const Divider(height: 20, thickness: 1),
              Text(
                '💬 Yorumlar',
                style: theme.textTheme.titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: comments.length,
                itemBuilder: (context, index) {
                  return _commentCard(context, comments[index]);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _teamInfo(BuildContext context, Team team) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Image.network(team.logoUrl, width: 50, height: 50),
        const SizedBox(height: 5),
        Text(
          team.name,
          style: theme.textTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: theme.colorScheme.error,
          ),
        ),
      ],
    );
  }

  Widget _commentCard(BuildContext context, Comment comment) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(comment.profilePicUrl),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  comment.name,
                  style: theme.textTheme.bodyLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  comment.text,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MatchCardSmall extends StatelessWidget {
  final Team team1;
  final Team team2;
  final String matchDate;
  final String stadium;
  final List<Comment> comments;

  const MatchCardSmall({
    required this.team1,
    required this.team2,
    required this.matchDate,
    required this.stadium,
    required this.comments,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _teamInfo(context, team1),
                const SizedBox(width: 20),
                Text(
                  'vs',
                  style: theme.textTheme.bodyLarge
                      ?.copyWith(fontWeight: FontWeight.w500),
                ),
                const SizedBox(width: 20),
                _teamInfo(context, team2),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _teamInfo(BuildContext context, Team team) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Image.network(team.logoUrl, width: 50, height: 50),
        const SizedBox(height: 5),
        Text(
          team.shortName ?? team.name,
          style: theme.textTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: theme.colorScheme.error,
          ),
        ),
      ],
    );
  }
}

class Team {
  final String name;
  final String? shortName;
  final String logoUrl;
  final List<String>? recentMatches;

  Team({
    required this.name,
    this.recentMatches,
    this.shortName,
    required this.logoUrl,
  });
}

class Comment {
  final String name;
  final String profilePicUrl;
  final String text;

  Comment({
    required this.name,
    required this.profilePicUrl,
    required this.text,
  });
}
