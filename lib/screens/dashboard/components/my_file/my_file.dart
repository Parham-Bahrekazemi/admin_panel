import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/responsive.dart';
import '../../../../models/my_file_model.dart';
import '../../../constants.dart';
import './file_info_card.dart';

class MyFile extends StatelessWidget {
  const MyFile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.of(context).size.width;
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'My Files',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding * 1.5,
                  vertical:
                      defaultPadding / (ResPonsive.isMobile(context) ? 1 : 2),
                ),
              ),
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('Add New'),
            ),
          ],
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        ResPonsive(
          mobile: FileInfoCardGridView(
            crossAxisCount: size < 650 ? 2 : 4,
            childAspectRatio: size < 650 ? 1.3 : 1,
          ),
          tablet: const FileInfoCardGridView(),
          desktop:
              FileInfoCardGridView(childAspectRatio: size < 1400 ? 1.1 : 1.4),
        ),
      ],
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {
  const FileInfoCardGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoMyFiles.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (BuildContext context, int index) => FileInfoCard(
        info: demoMyFiles[index],
      ),
    );
  }
}
