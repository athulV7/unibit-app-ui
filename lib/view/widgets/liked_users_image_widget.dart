import 'package:flutter/material.dart';

class LikedUsersImage extends StatelessWidget {
  const LikedUsersImage({
    super.key,
    required this.profilePic,
  });

  final String profilePic;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 16,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 14,
        backgroundColor: Colors.white,
        backgroundImage: AssetImage(
          profilePic,
        ),
      ),
    );
  }
}