import 'package:admin/constants.dart';
import 'package:flutter/material.dart';

import 'components/header.dart';
import 'components/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Header(),
          SizedBox(height: defaultPadding),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child: Container(),
              ),
              SizedBox(width: defaultPadding),
              Expanded(
                flex: 2,
                child: StorageDetails(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
