import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unibit_app/constants.dart';
import 'package:unibit_app/controller/bottom_navbar_controller.dart';

class BottomNavBar extends GetView<BottomNavbarController> {
  BottomNavBar({super.key});

  final bottomNavbarController = Get.put(BottomNavbarController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body:
            bottomNavbarController.screens[bottomNavbarController.index.value],
        bottomNavigationBar: BottomAppBar(
          height: height * 0.08,
          notchMargin: 6,
          shape: const CircularNotchedRectangle(),
          //color of the BottomAppBar
          color: Colors.white,
          child: Container(
            margin: const EdgeInsets.only(left: 12.0, right: 12.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    bottomNavbarController.index.value = 0;
                  },
                  child: BottomNavbarItem(
                    icon: Icons.headset_mic,
                    label: "Contact",
                    selectedColor: bottomNavbarController.index.value == 0
                        ? Colors.orange
                        : Colors.grey,
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    bottomNavbarController.index.value = 1;
                  },
                  child: BottomNavbarItem(
                    icon: Icons.wallet,
                    label: "wallet",
                    selectedColor: bottomNavbarController.index.value == 1
                        ? Colors.orange
                        : Colors.grey,
                  ),
                ),
                const SizedBox(
                  width: 70.0,
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    bottomNavbarController.index.value = 2;
                  },
                  child: BottomNavbarItem(
                    icon: Icons.share,
                    label: "share",
                    selectedColor: bottomNavbarController.index.value == 2
                        ? Colors.orange
                        : Colors.grey,
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    bottomNavbarController.index.value = 3;
                  },
                  child: BottomNavbarItem(
                    icon: Icons.person,
                    label: "Profile",
                    selectedColor: bottomNavbarController.index.value == 3
                        ? Colors.orange
                        : Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
        // onTap: (value) {
        //   bottomNavbarController.index.value = value;
        // },
        // backgroundColor: Colors.amber,
        // type: BottomNavigationBarType.fixed,
        // currentIndex: bottomNavbarController.index.value,
        // items: const <BottomNavigationBarItem>[
        //   BottomNavigationBarItem(
        //     icon: Icon(Icons.headset_mic),
        //     label: "Contact",
        //   ),
        //   BottomNavigationBarItem(
        //     icon: Icon(Icons.wallet),
        //     label: "Wallet",
        //   ),
        //   BottomNavigationBarItem(
        //     icon: Icon(Icons.share),
        //     label: "Share",
        //   ),
        //   BottomNavigationBarItem(
        //     icon: Icon(Icons.person),
        //     label: "Profile",
        //   ),
        // ],

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          elevation: 0.0,
          child: Container(
            width: width * 0.14,
            height:  width * 0.14, 
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 18, 148, 228),
                Color(0xff0052BE)
              ],begin: Alignment.bottomCenter,end: Alignment.topCenter),
            ),
            child: const Icon(
              CupertinoIcons.add,
              size: 30,
            ),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}

class BottomNavbarItem extends StatelessWidget {
  const BottomNavbarItem({
    super.key,
    required this.label,
    required this.icon,
    required this.selectedColor,
  });
  final String label;
  final IconData icon;
  final Color selectedColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: selectedColor),
        Text(
          label,
          style: TextStyle(color: selectedColor),
        )
      ],
    );
  }
}
