import 'package:flutter/material.dart';
import '../account/account_screen.dart';
import '../explore_screen.dart';
import '../home/home_screen.dart';
import '../plan/plan_screen.dart';
import '../statistic_screen.dart';

class NavigatorItem {
  final String label;
  final String iconPath;
  final int index;
  final Widget screen;

  NavigatorItem(this.label, this.iconPath, this.index, this.screen);
}

List<NavigatorItem> navigatorItems = [
  NavigatorItem("Home", "assets/icons/templateicons/shop_icon.svg", 0, const HomeScreen()),
  NavigatorItem("Explore", "assets/icons/templateicons/explore_icon.svg", 1, const ExploreScreen()),
  NavigatorItem("Plan", "assets/icons/account_icons/orders_icon.svg", 2, const PlanScreen()),
  NavigatorItem(
      "Statistic", "assets/icons/templateicons/favourite_icon.svg", 3, const StatisticScreen()),
  NavigatorItem("Account", "assets/icons/templateicons/account_icon.svg", 4, const AccountScreen()),
];
