import 'package:flutter/material.dart';
import 'package:haykolig/src/appColors.dart';
import 'package:haykolig/widgets/bottomNavigation.dart';
import 'package:haykolig/widgets/matchCard.dart';
import 'package:haykolig/widgets/textStyles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      const MontserratText(
                        text: 'Günün Önemli Maçları',
                        weight: 'bold',
                        size: 30,
                        color: AppColors.primaryColor,
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
                      const MontserratText(
                        text: 'Bülten',
                        weight: 'bold',
                        size: 30,
                        color: AppColors.primaryColor,
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
                      MatchCard(
                        recentScores: ['2-1', '1-0', '1-0', '2-0', '0-1'],
                        team1: Team(
                            name: 'Real Madrid',
                            recentMatches: ['W', 'L', 'W', 'W', 'L'],
                            logoUrl:
                                '//ssl.gstatic.com/onebox/media/sports/logos/Th4fAVAZeCJWRcKoLW7koA_96x96.png'),
                        team2: Team(
                            name: 'Getafe',
                            recentMatches: ['D', 'L', 'L', 'W', 'W'],
                            logoUrl:
                                '//ssl.gstatic.com/onebox/media/sports/logos/1UDHZMdKZD15W5gus7dJyg_96x96.png'),
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
                      const MontserratText(
                        text: 'Yarının Önemli Maçları',
                        weight: 'bold',
                        size: 30,
                        color: AppColors.primaryColor,
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
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsI7HSAmpTABSDPakh6BvzfxS6te0ITnX4fw&s'),
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
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0egzx_M8YkTdLZEnwcy4cxfoD_if5md_ndg&s'),
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
}
