import 'package:flutter/material.dart';
import 'package:fall_2023_project/appBar.dart';


class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) => DefaultTabController( 
    length:2,
    child: Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
          return <Widget>[
            const appBar()
          ];
        },
        body: TabBarView(
      children: [Container(color: Colors.blue),
      Container(color: Colors.red)],
    ),
      ),
    ),
  );
}
