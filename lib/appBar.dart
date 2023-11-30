import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class appBar extends StatelessWidget {
  const appBar({super.key});

  @override
  Widget build(BuildContext context){
    return SliverOverlapAbsorber(
      handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
      sliver: SliverAppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark, 
          statusBarBrightness: Brightness.light, 
        ),
        snap: false,
        pinned: true,
        floating: false,
        flexibleSpace:  FlexibleSpaceBar(
          centerTitle: true,
          titlePadding: const EdgeInsets.only(bottom: 14),
          title: const Text('Екатерина',
            style: TextStyle(fontSize: 16,
              color: Colors.black
            )
          ),
          background: DecoratedBox(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
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
          ),
          collapseMode: CollapseMode.pin,
        ),
        expandedHeight: 222,
        backgroundColor: Colors.green[50],
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
      )
    );
  }
}