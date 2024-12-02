import 'package:flutter/material.dart';
import 'package:haykolig/src/appColors.dart';
import 'package:haykolig/widgets/bottomNavigation.dart';
import 'package:haykolig/widgets/matchCard.dart';
import 'package:haykolig/widgets/textStyles.dart';

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
        backgroundColor: AppColors.backgroundColor,
        title: MontserratText(
            text: widget.title,
            weight: "bold",
            size: 25,
            color: AppColors.secondaryColor),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(color: AppColors.backgroundColor),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Takımların bilgisi ve son 5 maç form durumu
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _teamInfo(
                                  widget.team1, widget.team1.recentMatches!),
                              MontserratText(
                                text: 'vs',
                                size: 20,
                                color: AppColors.secondaryColor,
                                weight: 'normal',
                              ),
                              _teamInfo(
                                  widget.team2, widget.team2.recentMatches!),
                            ],
                          ),
                          SizedBox(height: 10),
                          MontserratText(
                            text: '📅 Tarih: ${widget.matchDate}',
                            size: 16,
                            color: Colors.black,
                            weight: 'normal',
                          ),
                          MontserratText(
                            text: '🏟 Stadyum: ${widget.stadium}',
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
                          // Yorumların Listesi
                          ListView.builder(
                            shrinkWrap: true,
                            itemCount: widget.comments.length,
                            itemBuilder: (context, index) {
                              return _commentCard(widget.comments[index]);
                            },
                          ),
                          Divider(height: 20, thickness: 1),
                          // Yorum ekleme kısmı
                          _commentInput(),
                          Divider(height: 20, thickness: 1),
                          MontserratText(
                            text: '📊 Son 5 Maç Skorları',
                            size: 18,
                            color: AppColors.secondaryColor,
                            weight: 'normal',
                          ),
                          _recentScoresDisplay(widget.team1, widget.team2),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )),
            bottomNavigation()
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
        MontserratText(
          text: team.name,
          size: 16,
          color: AppColors.secondaryColor,
          weight: 'bold',
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
                border: OutlineInputBorder(),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {
              if (_controller.text.isNotEmpty) {
                setState(() {
                  // Yorumları ekle
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
              MontserratText(
                  text: team1.name,
                  weight: 'normal',
                  size: 16,
                  color: Colors.black),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.secondaryColor,
                ),
                child: MontserratText(
                  text: score,
                  size: 14,
                  color: Colors.white,
                  weight: 'normal',
                ),
              ),
              MontserratText(
                  text: team2.name,
                  weight: 'normal',
                  size: 16,
                  color: Colors.black),
              Image.network(team2.logoUrl, width: 50, height: 50),
            ],
          ),
        );
      }).toList(),
    );
  }
}
