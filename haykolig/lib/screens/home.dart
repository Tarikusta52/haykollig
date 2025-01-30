import 'package:flutter/material.dart';
import 'package:haykolig/main.dart';
import 'package:haykolig/widgets/bottomNavigation.dart';
import 'package:haykolig/widgets/matchCard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(color: theme.colorScheme.background),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Günün Önemli Maçları',
                              style: theme.textTheme.headlineSmall?.copyWith(
                                color: theme.colorScheme.primary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            ThemeToggleButton(),
                          ],
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              MatchCardSmall(
                                team1: Team(
                                    name: 'Hatayspor',
                                    shortName: 'HTY',
                                    logoUrl:
                                        'https://upload.wikimedia.org/wikipedia/tr/0/08/Hatayspor.png'),
                                team2: Team(
                                    name: 'Beşiktaş',
                                    shortName: 'BJK',
                                    logoUrl:
                                        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Logo_of_Be%C5%9Fikta%C5%9F_JK.svg/220px-Logo_of_Be%C5%9Fikta%C5%9F_JK.svg.png'),
                                matchDate: '30 Kasım 2024, 22:45',
                                stadium: 'Santiago Bernebau',
                                comments: [
                                  Comment(
                                    name: 'Arda Güler',
                                    profilePicUrl:
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRr9G6M5YuiTWmxoN4QW9Rln9zhnDzhn0eihQ&s',
                                    text: 'Yine kulübedeyim :(',
                                  ),
                                ],
                              ),
                              MatchCardSmall(
                                team1: Team(
                                    name: 'Roma',
                                    shortName: 'ROM',
                                    logoUrl:
                                        'https://upload.wikimedia.org/wikipedia/tr/5/59/As_roma.png?20240319151843'),
                                team2: Team(
                                    name: 'Atalanta',
                                    shortName: 'ATA',
                                    logoUrl:
                                        'https://upload.wikimedia.org/wikipedia/tr/c/c7/Atalanta_bc.gif'),
                                matchDate: '30 Kasım 2024, 22:45',
                                stadium: 'Santiago Bernebau',
                                comments: [
                                  Comment(
                                    name: 'Arda Güler',
                                    profilePicUrl:
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRr9G6M5YuiTWmxoN4QW9Rln9zhnDzhn0eihQ&s',
                                    text: 'Yine kulübedeyim :(',
                                  ),
                                ],
                              ),
                              MatchCardSmall(
                                team1: Team(
                                    name: 'Real Madrid',
                                    shortName: 'RMA',
                                    logoUrl:
                                        'https://upload.wikimedia.org/wikipedia/tr/9/98/Real_Madrid.png'),
                                team2: Team(
                                    name: 'Getafe',
                                    shortName: 'GTF',
                                    logoUrl:
                                        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/Getafe_CF_Logo.png/150px-Getafe_CF_Logo.png'),
                                matchDate: '30 Kasım 2024, 22:45',
                                stadium: 'Santiago Bernebau',
                                comments: [
                                  Comment(
                                    name: 'Arda Güler',
                                    profilePicUrl:
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRr9G6M5YuiTWmxoN4QW9Rln9zhnDzhn0eihQ&s',
                                    text: 'Yine kulübedeyim :(',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Bülten',
                          style: theme.textTheme.headlineSmall?.copyWith(
                            color: theme.colorScheme.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        MatchCard(
                          recentScores: ['3-1', '0-1', '3-0', '0-0', '3-0'],
                          team1: Team(
                              name: 'Galatasaray',
                              recentMatches: ['W', 'W', 'W', 'D', 'D'],
                              logoUrl:
                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/Galatasaray_Sports_Club_Logo.png/481px-Galatasaray_Sports_Club_Logo.png'),
                          team2: Team(
                              name: 'Fenerbahçe',
                              recentMatches: ['L', 'W', 'W', 'W', 'W'],
                              logoUrl:
                                  'https://ssl.gstatic.com/onebox/media/sports/logos/HOQreZgFrmtQiLi8HKb9zA_96x96.png'),
                          matchDate: '30 Kasım 2024, 19:00',
                          stadium: 'Rams Park',
                          comments: [
                            Comment(
                              name: 'Rambo Okan',
                              profilePicUrl:
                                  'https://pbs.twimg.com/profile_images/2478454759/behzat-_-vs-rambo-okan_244582_400x400.jpg',
                              text: 'En büyük CİMBOM',
                            ),
                          ],
                        ),
                        MatchCard(
                          recentScores: ['2-1', '1-0', '1-0', '2-0', '0-1'],
                          team1: Team(
                              name: 'Real Madrid',
                              recentMatches: ['W', 'L', 'W', 'W', 'L'],
                              logoUrl:
                                  'https://upload.wikimedia.org/wikipedia/tr/9/98/Real_Madrid.png'),
                          team2: Team(
                              name: 'Getafe',
                              recentMatches: ['D', 'L', 'L', 'W', 'W'],
                              logoUrl:
                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/Getafe_CF_Logo.png/150px-Getafe_CF_Logo.png'),
                          matchDate: '30 Kasım 2024, 19:00',
                          stadium: 'Santiago Bernabéu',
                          comments: [
                            Comment(
                              name: 'Arda Güler',
                              profilePicUrl:
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRr9G6M5YuiTWmxoN4QW9Rln9zhnDzhn0eihQ&s',
                              text: 'Yine kulübedeyim :(',
                            ),
                          ],
                        ),
                        Text(
                          'Yarının Önemli Maçları',
                          style: theme.textTheme.headlineSmall?.copyWith(
                            color: theme.colorScheme.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              MatchCardSmall(
                                team1: Team(
                                    name: 'Manchester United',
                                    shortName: 'MU',
                                    logoUrl:
                                        'https://upload.wikimedia.org/wikipedia/tr/b/b6/Manchester_United_FC_logo.png'),
                                team2: Team(
                                    name: 'nottingham Forest',
                                    shortName: 'NOT',
                                    logoUrl:
                                        'https://upload.wikimedia.org/wikipedia/tr/8/85/Nottingham_Forest_FC.png'),
                                matchDate: '30 Kasım 2024, 22:45',
                                stadium: 'Santiago Bernebau',
                                comments: [
                                  Comment(
                                    name: 'Arda Güler',
                                    profilePicUrl:
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRr9G6M5YuiTWmxoN4QW9Rln9zhnDzhn0eihQ&s',
                                    text: 'Yine kulübedeyim :(',
                                  ),
                                ],
                              ),
                              MatchCardSmall(
                                team1: Team(
                                    name: 'Crystal Palace',
                                    shortName: 'CRY',
                                    logoUrl:
                                        'https://upload.wikimedia.org/wikipedia/hif/c/c1/Crystal_Palace_FC_logo.png'),
                                team2: Team(
                                    name: 'Manchester City',
                                    shortName: 'MCI',
                                    logoUrl:
                                        'https://upload.wikimedia.org/wikipedia/tr/archive/f/f6/20160808091023%21Manchester_City.png'),
                                matchDate: '30 Kasım 2024, 22:45',
                                stadium: 'Santiago Bernebau',
                                comments: [
                                  Comment(
                                    name: 'Arda Güler',
                                    profilePicUrl:
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRr9G6M5YuiTWmxoN4QW9Rln9zhnDzhn0eihQ&s',
                                    text: 'Yine kulübedeyim :(',
                                  ),
                                ],
                              ),
                              MatchCardSmall(
                                team1: Team(
                                    name: 'Barcelona',
                                    shortName: 'BAR',
                                    logoUrl:
                                        'https://upload.wikimedia.org/wikipedia/tr/thumb/4/47/FC_Barcelona.png/200px-FC_Barcelona.png'),
                                team2: Team(
                                    name: 'Getafe',
                                    shortName: 'GTF',
                                    logoUrl:
                                        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/Getafe_CF_Logo.png/150px-Getafe_CF_Logo.png'),
                                matchDate: '30 Kasım 2024, 22:45',
                                stadium: 'Santiago Bernebau',
                                comments: [
                                  Comment(
                                    name: 'Arda Güler',
                                    profilePicUrl:
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRr9G6M5YuiTWmxoN4QW9Rln9zhnDzhn0eihQ&s',
                                    text: 'Yine kulübedeyim :(',
                                  ),
                                ],
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
            BottomNavigation(),
          ],
        ),
      ),
    );
  }
}
