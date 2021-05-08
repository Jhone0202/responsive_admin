import 'package:admin/models/RecentFile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DataRow recentFileDataRow(RecentFile file) {
      return DataRow(
        cells: [
          DataCell(
            Row(
              children: [
                SvgPicture.asset(file.icon, height: 30, width: 30),
                SizedBox(width: defaultPadding),
                Text(file.title)
              ],
            ),
          ),
          DataCell(Text(file.date)),
          DataCell(Text(file.size)),
        ],
      );
    }

    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Files',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.maxFinite,
            child: DataTable(
              columnSpacing: defaultPadding,
              horizontalMargin: 0.0,
              columns: [
                DataColumn(label: Text('File Name')),
                DataColumn(label: Text('Date')),
                DataColumn(label: Text('Size')),
              ],
              rows: List.generate(
                demoRecentFiles.length,
                (i) => recentFileDataRow(demoRecentFiles[i]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
