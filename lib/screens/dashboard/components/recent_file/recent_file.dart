import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../models/recent_file_model.dart';
import '../../../constants.dart';

class RecentFileTable extends StatelessWidget {
  const RecentFileTable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Recent Files',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              horizontalMargin: 0,
              columnSpacing: defaultPadding,
              columns: const [
                DataColumn(label: Text('File Name')),
                DataColumn(label: Text('Date')),
                DataColumn(label: Text('Size')),
              ],
              rows: List.generate(
                demoRecentFiles.length,
                (int index) => recentFileDataRow(
                  demoRecentFiles[index],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow recentFileDataRow(RecentFile fileInfo) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: <Widget>[
            SvgPicture.asset(
              fileInfo.icon.toString(),
              height: 30,
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(fileInfo.title.toString()),
            ),
          ],
        ),
      ),
      DataCell(
        Text(fileInfo.date.toString()),
      ),
      DataCell(
        Text(fileInfo.size.toString()),
      ),
    ],
  );
}
