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
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAr6SivQ-PWI22-aA3mZzDctSGAUWLyLWQCA&s'),
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
                                        '//ssl.gstatic.com/onebox/media/sports/logos/Th4fAVAZeCJWRcKoLW7koA_96x96.png'),
                                team2: Team(
                                    name: 'Getafe',
                                    shortName: 'GTF',
                                    logoUrl:
                                        '//ssl.gstatic.com/onebox/media/sports/logos/1UDHZMdKZD15W5gus7dJyg_96x96.png'),
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
                                  '//ssl.gstatic.com/onebox/media/sports/logos/TWjoccvTU4JXZJZ3aW3cVg_96x96.png'),
                          team2: Team(
                              name: 'Fenerbahçe',
                              recentMatches: ['L', 'W', 'W', 'W', 'W'],
                              logoUrl:
                                  'https://ssl.gstatic.com/onebox/media/sports/logos/HOQreZgFrmtQiLi8HKb9zA_96x96.png'),
                          matchDate: '30 Kasım 2024, 19:00',
                          stadium: 'Rams Park',
                          comments: [
                            Comment(
                              name: 'Namlusu Yanık Kalaşnikof',
                              profilePicUrl:
                                  'https://scontent.fist6-3.fna.fbcdn.net/v/t39.30808-6/458639289_3884906988501199_632338042608327774_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=a5f93a&_nc_ohc=eSNGbNgCZhgQ7kNvgEdYaXd&_nc_zt=23&_nc_ht=scontent.fist6-3.fna&_nc_gid=AHerqaoF_DTeA1VpG1NIr5L&oh=00_AYDcTlMuYeCTdyilzWd_eIGyTEPx2yqu1jJJM7EaPgW1rQ&oe=6750D7AB',
                              text: 'Montella İstifa!',
                            ),
                            Comment(
                              name: 'Rambo Okan',
                              profilePicUrl:
                                  'https://pbs.twimg.com/profile_images/2478454759/behzat-_-vs-rambo-okan_244582_400x400.jpg',
                              text: 'En büyük CİMBOM',
                            ),
                          ],
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
