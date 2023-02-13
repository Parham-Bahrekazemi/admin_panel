import 'package:flutter/material.dart';

import '../../../constants.dart';

import 'chart.dart';
import 'storage_info_card.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
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
          const Text(
            'Storage Details',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          Chart(
            pieChartSectionData: pieChartSectionData,
          ),
          const StorageInfoCard(
            title: 'Documents Files',
            svgSrc: 'assets/icons/Documents.svg',
            amountOfFiles: '1.3GB',
            numOfFiles: 1328,
          ),
          const StorageInfoCard(
            title: 'Media Files',
            svgSrc: 'assets/icons/media.svg',
            amountOfFiles: '15.3GB',
            numOfFiles: 387,
          ),
          const StorageInfoCard(
            title: 'Other Files',
            svgSrc: 'assets/icons/folder.svg',
            amountOfFiles: '3.7GB',
            numOfFiles: 2035,
          ),
          const StorageInfoCard(
            title: 'Unknown',
            svgSrc: 'assets/icons/unknown.svg',
            amountOfFiles: '648MB',
            numOfFiles: 154,
          ),
        ],
      ),
    );
  }
}
