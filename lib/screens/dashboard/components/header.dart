import 'package:admin/controllers/MenuController.dart';
import 'package:admin/responsive.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: context.read<MenuController>().controlMenu,
          ),
        if (!Responsive.isMobile(context))
          Text(
            'Dashboard',
            style: Theme.of(context).textTheme.headline6,
          ),
        if (!Responsive.isMobile(context))
          Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: TextField(
              decoration: InputDecoration(
                fillColor: secondaryColor,
                filled: true,
                hintText: 'Search',
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
                suffixIcon: IconButton(
                  icon: Icon(Icons.search_rounded),
                  onPressed: () {},
                  splashRadius: 10,
                ),
              ),
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              if (!Responsive.isMobile(context))
                SizedBox(width: defaultPadding),
              ClipOval(
                child: Image.asset(
                  'assets/images/pp.jpg',
                  width: 32,
                  height: 32,
                ),
              ),
              if (!Responsive.isMobile(context))
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: defaultPadding / 2),
                  child: Text(
                    'Cyber',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              if (!Responsive.isMobile(context))
                Icon(Icons.keyboard_arrow_down, color: Colors.white),
            ],
          ),
        ),
      ],
    );
  }
}
