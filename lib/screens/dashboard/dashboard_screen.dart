import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/responsive.dart';
import 'components/my_file/my_file.dart';
import 'components/recent_file/recent_file.dart';
import 'components/header/header.dart';
import '../constants.dart';

import 'components/storage/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: <Widget>[
            const Header(),
            const SizedBox(
              height: defaultPadding,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 5,
                  child: Column(
                    children: <Widget>[
                      const MyFile(),
                      const SizedBox(
                        height: defaultPadding,
                      ),
                      const RecentFileTable(),
                      if (ResPonsive.isMobile(context))
                        const SizedBox(
                          height: defaultPadding,
                        ),
                      if (ResPonsive.isMobile(context)) const StorageDetails(),
                    ],
                  ),
                ),
                if (!ResPonsive.isMobile(context))
                  const SizedBox(
                    width: defaultPadding,
                  ),
                if (!ResPonsive.isMobile(context))
                  const Expanded(
                    flex: 2,
                    child: StorageDetails(),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
