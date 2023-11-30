import 'package:flutter/material.dart';


class appBar extends StatelessWidget {
  const appBar({super.key});

  @override
  Widget build(BuildContext context){
    var  myTabs = ["Профиль", "Настройки"];
    return SliverOverlapAbsorber(
      handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
      sliver: SliverAppBar(
        snap: false,
        pinned: true,
        floating: false,
        flexibleSpace:  FlexibleSpaceBar(
          centerTitle: true,
          titlePadding: const EdgeInsets.only(bottom: 62),
          title: const Text('Екатерина',
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
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Image.asset('assets/cross.png'),
          tooltip: 'Cross',
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/arrow_right_square.png'),
            tooltip: 'Arrow_right_square',
            onPressed: () {},
            ),
          ],
          bottom: TabBar(
            tabs: myTabs.map((String name) => Tab(text: name)).toList(),
          ),
      )
    );
  }
}