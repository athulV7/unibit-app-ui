import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unibit_app/constants.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:unibit_app/view/widgets/game_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 243, 243),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(width * 0.18),
        child: AppBar(
          backgroundColor: Colors.black,
          leading: Padding(
            padding: EdgeInsets.all(width * 0.02),
            child: DottedBorder(
              dashPattern: const[5,5],     
              color: Colors.amber,
              borderType: BorderType.Circle,
              strokeWidth: 1,
              child: const CircleAvatar(
                backgroundImage: AssetImage("assets/logo1.26acee9e.png"),
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.bell),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(width * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                " Hello, Dipak 👋",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: height * 0.02),
              Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Container(
                    height: height * 0.08,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        "assets/two-dice4.jpeg",
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.05),
                    child: const Text(
                      "UNIBIT Fantasy is Live",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: height * 0.025),
              const GameCard(imageurl: "assets/Ludo_King-1.jpg",title: " Play Ludo and Earn Money"),
              SizedBox(height: height * 0.023),
              const GameCard(imageurl: "assets/better-ranking.jpg",title: "Play Cricket Fantasy League"),  
            ],
          ),
        ),
      ),
    );
  }
}
