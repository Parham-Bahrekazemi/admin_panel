import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/menu_controller.dart';
import 'package:flutter_application_1/screens/responsive.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        if (!ResPonsive.isDesktop(context))
          IconButton(
            onPressed: context.read<MenuController>().controlMenu,
            icon: const Icon(Icons.menu),
          ),
        if (!ResPonsive.isMobile(context))
          Text(
            'Dashboard',
            style: Theme.of(context).textTheme.headline6,
          ),
        if (!ResPonsive.isMobile(context))
          Spacer(
            flex: ResPonsive.isDesktop(context) ? 2 : 1,
          ),
        const Expanded(
          child: SearchField(),
        ),
        const ProfileCard(),
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: defaultPadding),
      padding: const EdgeInsets.symmetric(
          vertical: defaultPadding / 2, horizontal: defaultPadding),
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        children: <Widget>[
          Image.asset(
            'assets/images/profile_pic.png',
            height: 38,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
            child: Text('Atena'),
          ),
          const Icon(Icons.keyboard_arrow_down),
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        fillColor: secondaryColor,
        filled: true,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        suffixIcon: InkWell(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
            padding: const EdgeInsets.all(defaultPadding * 0.75),
            decoration: const BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: SvgPicture.asset('assets/icons/Search.svg'),
          ),
        ),
      ),
    );
  }
}
