import 'package:flutter/material.dart';
import 'package:haykolig/src/appColors.dart';
import 'package:haykolig/widgets/bottomNavigation.dart';
import 'package:haykolig/widgets/textStyles.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 16),
          CircleAvatar(
            radius: 50,
            backgroundColor: AppColors.secondaryColor,
            child: Icon(
              Icons.person,
              size: 50,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 16),
          MontserratText(
              text: "KloZed52",
              weight: "normal",
              size: 22,
              color: AppColors.primaryColor),
          SizedBox(height: 8),
          MontserratText(
              text: "tarik.ustaoglu112@gmail.com",
              weight: "normal",
              size: 22,
              color: Colors.black),
          SizedBox(height: 8),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  MontserratText(
                      text: 'Takipçi',
                      weight: "normal",
                      size: 18,
                      color: AppColors.primaryColor),
                  SizedBox(height: 4),
                  MontserratText(
                      text: '120',
                      weight: "normal",
                      size: 18,
                      color: Colors.black),
                ],
              ),
              Column(
                children: [
                  MontserratText(
                      text: 'Takip Edilen',
                      weight: "normal",
                      size: 18,
                      color: AppColors.primaryColor),
                  SizedBox(height: 4),
                  MontserratText(
                      text: '55',
                      weight: "normal",
                      size: 18,
                      color: Colors.black),
                ],
              ),
            ],
          ),
          Expanded(child: Column()),
          Column(
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration:
                      BoxDecoration(color: Color.fromRGBO(0, 0, 0, 0.1)),
                  child: Center(
                    child: MontserratText(
                        text: "Profili Düzenle",
                        weight: 'normal',
                        size: 18,
                        color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration:
                      BoxDecoration(color: Color.fromRGBO(0, 0, 0, 0.1)),
                  child: Center(
                    child: MontserratText(
                        text: "Çıkış Yap",
                        weight: 'normal',
                        size: 18,
                        color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
          bottomNavigation()
        ],
      ),
    );
  }
}
