import 'package:flutter/material.dart';
import 'package:SeWo/ui/screens/beranda.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/tabBarItem(0)':
        return MaterialPageRoute(builder: (_) => Beranda());
      case '/tabBarItem(1)':
        return MaterialPageRoute(builder: (_) => Order());
      case '/tabBarItem(2)':
        return MaterialPageRoute(builder: (_) => Zakat());
      case '/tabBarItem(3)':
        return MaterialPageRoute(builder: (_) => Chat());
    }
  }
}
