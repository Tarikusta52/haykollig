import 'package:flutter/material.dart';
import 'package:haykolig/widgets/bottomNavigation.dart';
import 'package:haykolig/widgets/matchCard.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen(
      {super.key,
      required this.title,
      required this.team1,
      required this.team2,
      required this.matchDate,
      required this.stadium,
      required this.comments,
      required this.recentScores});

  final String title;
  final Team team1;
  final Team team2;
  final String matchDate;
  final String stadium;
  final List<Comment> comments;
  final List<String> recentScores;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late TextEditingController _controller;
  late List<Comment> comments;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    comments = widget.comments;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Text(
          widget.title,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.secondary,
              ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _teamInfo(
                                  widget.team1, widget.team1.recentMatches!),
                              Text(
                                'vs',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontSize: 20,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                    ),
                              ),
                              _teamInfo(
                                  widget.team2, widget.team2.recentMatches!),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            '📅 Tarih: ${widget.matchDate}',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: 16,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                          ),
                          Text(
                            '🏟 Stadyum: ${widget.stadium}',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: 16,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                          ),
                          Divider(height: 20, thickness: 1),
                          Text(
                            '💬 Yorumlar',
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(
                                  fontSize: 18,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            itemCount: widget.comments.length,
                            itemBuilder: (context, index) {
                              return _commentCard(widget.comments[index]);
                            },
                          ),
                          Divider(height: 20, thickness: 1),
                          _commentInput(),
                          Divider(height: 20, thickness: 1),
                          Text(
                            '📊 Son 5 Maç Skorları',
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(
                                  fontSize: 18,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                          ),
                          _recentScoresDisplay(widget.team1, widget.team2),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )),
            BottomNavigation()
          ],
        ),
      ),
    );
  }

  Widget _teamInfo(Team team, List<String> recentMatches) {
    return Column(
      children: [
        Image.network(team.logoUrl, width: 50, height: 50),
        SizedBox(height: 5),
        Text(
          team.name,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.secondary,
              ),
        ),
        Row(
          children: recentMatches.map((match) {
            Color color;
            switch (match) {
              case 'W':
                color = Colors.green;
                break;
              case 'L':
                color = Colors.red;
                break;
              case 'D':
                color = Colors.grey;
                break;
              default:
                color = Colors.transparent;
            }
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 3),
              width: 15,
              height: 15,
              decoration: BoxDecoration(shape: BoxShape.circle, color: color),
            );
          }).toList(),
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
                Text(
                  comment.name,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                ),
                Text(
                  comment.text,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 14,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _commentInput() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/default_profile_pic.png'),
          ),
          SizedBox(width: 10),
          Expanded(
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Yorum ekle...',
                hintStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.grey,
                    ),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send, color: Theme.of(context).colorScheme.error),
            onPressed: () {
              if (_controller.text.isNotEmpty) {
                setState(() {
                  comments.add(Comment(
                    name: "Yeni Kullanıcı",
                    profilePicUrl: 'assets/default_profile_pic.png',
                    text: _controller.text,
                  ));
                });
                _controller.clear();
              }
            },
          ),
        ],
      ),
    );
  }

  Widget _recentScoresDisplay(Team team1, Team team2) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: widget.recentScores.map((score) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(team1.logoUrl, width: 50, height: 50),
              Text(
                team1.name,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Theme.of(context).colorScheme.error,
                ),
                child: Text(
                  score,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                ),
              ),
              Text(
                team2.name,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
              ),
              Image.network(team2.logoUrl, width: 50, height: 50),
            ],
          ),
        );
      }).toList(),
    );
  }
}
