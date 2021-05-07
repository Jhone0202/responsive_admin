import 'package:admin/constants.dart';
import 'package:admin/models/MyFiles.dart';
import 'package:flutter/material.dart';

import 'components/file_info_card.dart';
import 'components/header.dart';
import 'components/my_files.dart';
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
                child: Column(
                  children: [
                    MyFiles(),
                    SizedBox(height: defaultPadding),
                    GridView.builder(
                      shrinkWrap: true,
                      itemCount: demoMyFiels.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: defaultPadding,
                        childAspectRatio: 1.4,
                      ),
                      itemBuilder: (context, index) => FileInfoCard(
                        info: demoMyFiels[index],
                      ),
                    ),
                  ],
                ),
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
