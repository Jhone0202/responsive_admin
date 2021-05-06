import 'package:admin/constants.dart';
import 'package:admin/screens/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';

import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: SideMenu(),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: DashboardScreen(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
