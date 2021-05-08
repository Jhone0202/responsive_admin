import 'package:admin/constants.dart';
import 'package:admin/responsive.dart';
import 'package:flutter/material.dart';

import 'components/grid_of_files.dart';
import 'components/header.dart';
import 'components/my_files.dart';
import 'components/recent_files.dart';
import 'components/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
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
                child: Column(
                  children: [
                    MyFiles(),
                    SizedBox(height: defaultPadding),
                    Responsive(
                      mobile: GridOfFiles(
                        crossAxisCount: _size.width < 650 ? 2 : 4,
                        childAspectRatio: _size.width < 650 ? 1.4 : 1,
                      ),
                      tablet: GridOfFiles(),
                      desktop: GridOfFiles(
                        childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
                      ),
                    ),
                    SizedBox(height: defaultPadding),
                    RecentFiles(),
                    if (Responsive.isMobile(context))
                      SizedBox(height: defaultPadding),
                    if (Responsive.isMobile(context)) StorageDetails(),
                  ],
                ),
              ),
              if (!Responsive.isMobile(context))
                SizedBox(width: defaultPadding),
              if (!Responsive.isMobile(context))
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
