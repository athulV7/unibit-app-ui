import 'package:get/get.dart';
import 'package:unibit_app/view/home_screen.dart';
import 'package:unibit_app/view/profile_screen.dart';
import 'package:unibit_app/view/share_screen.dart';
import 'package:unibit_app/view/wallet_screen.dart';

class BottomNavbarController extends GetxController {
  var index = 0.obs;

  final screens = [
    const HomeScreen(),
    const WalletScreen(),
    const ShareScreen(),
    const ProfileScreen(),
  ];
}