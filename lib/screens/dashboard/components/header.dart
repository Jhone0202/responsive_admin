import 'package:flutter/material.dart';

import '../../../constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Dashboard',
          style: Theme.of(context).textTheme.headline6,
        ),
        Spacer(flex: 2),
        Expanded(
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
        SizedBox(width: defaultPadding * 2),
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              ClipOval(
                child: Image.asset(
                  'assets/images/pp.jpg',
                  width: 32,
                  height: 32,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
                child: Text(
                  'Cyber',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Icon(Icons.keyboard_arrow_down, color: Colors.white),
            ],
          ),
        ),
      ],
    );
  }
}
