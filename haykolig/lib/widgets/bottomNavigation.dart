import 'package:flutter/material.dart';
import 'package:haykolig/screens/home.dart';
import 'package:haykolig/screens/profile.dart';
import 'package:haykolig/src/appColors.dart';
import 'package:haykolig/widgets/textStyles.dart';

class bottomNavigation extends StatelessWidget {
  const bottomNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(color: AppColors.primaryColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.home,
                  color: AppColors.backgroundColor,
                ),
                MontserratText(
                    text: "Anasayfa",
                    weight: 'bold',
                    size: 14,
                    color: AppColors.backgroundColor)
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.person,
                  color: AppColors.backgroundColor,
                ),
                MontserratText(
                    text: "Profil",
                    weight: 'bold',
                    size: 14,
                    color: AppColors.backgroundColor)
              ],
            ),
          )
        ],
      ),
    );
  }
}
