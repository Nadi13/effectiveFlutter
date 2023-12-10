import 'package:flutter/material.dart';
import 'package:fall_2023_project/myTools/strings.dart';
import 'package:fall_2023_project/myTools/colors.dart';
import 'package:fall_2023_project/myTools/fontsTheme.dart';


class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context){
    var  myTabs = [Strings.profile, Strings.settings];
    return SliverOverlapAbsorber(
      handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
      sliver: SliverAppBar(
        snap: false,
        pinned: true,
        floating: false,
        flexibleSpace:  FlexibleSpaceBar(
          centerTitle: true,
          titlePadding: const EdgeInsets.only(bottom: 62),
          title: Text(Strings.userName,
            style: sfProTextTheme.displayMedium,
          ),
          background: Padding(
            padding:  const EdgeInsets.only(top:58),
            child: Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                child: Image.asset('assets/image/user.png',
                width:110,
                height:110,
                )
              )
            )
          ),
          collapseMode: CollapseMode.pin,
        ),
        expandedHeight: 250,
        backgroundColor: MyColors.primary,
        leading: IconButton(
          icon: Image.asset('assets/image/cross.png'),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/image/arrow_right_square.png'),
            onPressed: () {},
          ),
        ],
        bottom: TabBar(
          unselectedLabelColor: MyColors.textSecondary,
          tabs: myTabs.map((String name) => Tab(text: name)).toList(),
        ),
      ),
    );
  }
}