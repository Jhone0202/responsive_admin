import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'chart.dart';
import 'storage_info_card.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Storage Details',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: defaultPadding),
          Chart(),
          StorageInfoCard(
            title: 'Documents files',
            svgSrc: 'assets/icons/Documents.svg',
            numOfFiles: 1378,
            amountOfFiles: '1.3GB',
          ),
          StorageInfoCard(
            title: 'Media files',
            svgSrc: 'assets/icons/media.svg',
            numOfFiles: 2508,
            amountOfFiles: '15.3GB',
          ),
          StorageInfoCard(
            title: 'Other files',
            svgSrc: 'assets/icons/folder.svg',
            numOfFiles: 840,
            amountOfFiles: '4.5GB',
          ),
          StorageInfoCard(
            title: 'Unknown',
            svgSrc: 'assets/icons/unknown.svg',
            numOfFiles: 100,
            amountOfFiles: '0.9GB',
          ),
        ],
      ),
    );
  }
}
