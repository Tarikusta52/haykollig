import 'package:flutter/material.dart';
import 'package:haykolig/screens/detaill.dart';
import 'package:haykolig/src/appColors.dart';
import 'package:haykolig/widgets/textStyles.dart';

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
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              title: 'Maç Detayı',
              team1: team1,
              team2: team2,
              matchDate: matchDate,
              stadium: stadium,
              comments: comments,
              recentScores: recentScores,
            ),
          ),
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
                  _teamInfo(team1),
                  MontserratText(
                    text: 'vs',
                    size: 20,
                    color: AppColors.secondaryColor,
                    weight: 'normal',
                  ),
                  _teamInfo(team2),
                ],
              ),
              SizedBox(height: 10),
              MontserratText(
                text: '📅 Tarih: $matchDate',
                size: 16,
                color: Colors.black,
                weight: 'normal',
              ),
              MontserratText(
                text: '🏟 Stadyum: $stadium',
                size: 16,
                color: Colors.black,
                weight: 'normal',
              ),
              Divider(height: 20, thickness: 1),
              MontserratText(
                text: '💬 Yorumlar',
                size: 18,
                color: AppColors.secondaryColor,
                weight: 'normal',
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: comments.length,
                itemBuilder: (context, index) {
                  return _commentCard(comments[index]);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _teamInfo(Team team) {
    return Column(
      children: [
        Image.network(team.logoUrl, width: 50, height: 50),
        SizedBox(height: 5),
        MontserratText(
          text: team.name,
          size: 16,
          color: AppColors.secondaryColor,
          weight: 'bold',
        ),
      ],
    );
  }

  Widget _commentCard(Comment comment) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(comment.profilePicUrl),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MontserratText(
                  text: comment.name,
                  size: 14,
                  color: Colors.black,
                  weight: 'bold',
                ),
                MontserratText(
                  text: comment.text,
                  size: 14,
                  color: Colors.black,
                  weight: 'normal',
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
                _teamInfo(team1),
                SizedBox(width: 20),
                MontserratText(
                  text: 'vs',
                  size: 20,
                  color: AppColors.secondaryColor,
                  weight: 'normal',
                ),
                SizedBox(width: 20),
                _teamInfo(team2),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _teamInfo(Team team) {
    return Column(
      children: [
        Image.network(team.logoUrl, width: 50, height: 50),
        SizedBox(height: 5),
        MontserratText(
          text: team.shortName!,
          size: 16,
          color: AppColors.secondaryColor,
          weight: 'bold',
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

  Team(
      {required this.name,
      this.recentMatches,
      this.shortName,
      required this.logoUrl});
}

class Comment {
  final String name;
  final String profilePicUrl;
  final String text;

  Comment(
      {required this.name, required this.profilePicUrl, required this.text});
}
