import 'package:flutter/material.dart';
import 'package:unibit_app/constants.dart';
import 'package:unibit_app/view/widgets/liked_users_image_widget.dart';
import 'package:unibit_app/view/widgets/main_button_widget.dart';

class GameCard extends StatelessWidget {
  const GameCard({
    super.key,
    required this.imageurl, required this.title,
  });
  final String imageurl;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.3,
      width: double.infinity,
      padding: EdgeInsets.all(width * 0.03),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: height * 0.15,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade400,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imageurl,
                fit: BoxFit.cover,
                filterQuality: FilterQuality.medium,
              ),
            ),
          ),
          SizedBox(height: height * 0.02),
           Text(
            title,
            style: semiboldTextstyle,
          ),
          SizedBox(height: height * 0.014),
          Row(
            mainAxisAlignment: MainAxisAlignment.start, 
            children: [
              Row(
                children: [
                  SizedBox(
                    width: width * 0.18,
                    child: Stack(
                      children: const [
                        Positioned(
                          left: 32,
                          child: LikedUsersImage(
                            profilePic:
                                "assets/What-To-Wear-For-Your-Professional-Profile-.jpg",
                          ),
                        ),
                        Positioned(
                          left: 16,
                          child: LikedUsersImage(
                            profilePic: "assets/men_profile1.jpeg",
                          ),
                        ),
                        LikedUsersImage(
                          profilePic: "assets/pexels-photo-27261111.jpeg",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                children: const [
                  Text(
                    "5,00,000+",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "players",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              MainButtonWidget(
                label: "Play Now",
                colors: const [Color(0xffFFC004), Color(0xffFF742F)],
                buttonWidth: width * 0.33,
                buttonHeight: height * 0.046,
                ontapFunction: () {},
              )
            ],
          ),
        ],
      ),
    );
  }
}
