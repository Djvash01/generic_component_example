import 'package:flutter/material.dart';
import 'package:generic_component_example/models/models.dart';
import 'package:generic_component_example/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'listView1',
        icon: Icons.data_saver_off,
        name: 'Lista tipo 1',
        screen: const Listview1Screen()),
    MenuOption(
        route: 'listView2',
        icon: Icons.list_alt,
        name: 'Lista tipo 3',
        screen: const Listview2Screen()),
    MenuOption(
        route: 'alert',
        icon: Icons.warning,
        name: 'alert',
        screen: const AlertScreen()),
    MenuOption(
        route: 'card',
        icon: Icons.card_membership_sharp,
        name: 'card',
        screen: const CardScreen()),
    MenuOption(
        route: 'avatar',
        icon: Icons.supervised_user_circle,
        name: 'Circle avatar',
        screen: const AvatarScreen()),
    MenuOption(
        route: 'animated',
        icon: Icons.bug_report,
        name: 'animated',
        screen: const AnimatedScreen()),
    MenuOption(
        route: 'inputs',
        icon: Icons.input,
        name: 'Inputs',
        screen: const InputsScreen()),
  ];

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listView1': (BuildContext context) => const Listview1Screen(),
  //   'listView2': (BuildContext context) => const Listview2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext contex) => const HomeScreen()});
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext contex) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
