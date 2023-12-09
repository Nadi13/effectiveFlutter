import 'package:flutter/material.dart';
import 'package:fall_2023_project/myTools/strings.dart';
import 'package:fall_2023_project/myTools/colors.dart';


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
          title: const Text(Strings.userName,
            style: TextStyle(fontSize: 16,
              color: Colors.black
            )
          ),
          background: Padding(
              padding:  const EdgeInsets.only(top: 58),
              child: Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  child: Image.asset('assets/user.png',
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
          icon: Image.asset('assets/cross.png'),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/arrow_right_square.png'),
            onPressed: () {},
            ),
          ],
          bottom: TabBar(
            tabs: myTabs.map((String name) => Tab(text: name)).toList(),
          ),
      ),
    );
  }
}