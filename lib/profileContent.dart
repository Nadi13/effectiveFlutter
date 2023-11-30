import 'package:flutter/material.dart';
import 'package:fall_2023_project/myTools/strings.dart';

class ProfileContent extends StatelessWidget {
  const ProfileContent({super.key});

  @override
  Widget build(BuildContext context){
    return Builder( 
      builder: (BuildContext context) {
        return CustomScrollView(
          slivers: <Widget>[
            SliverOverlapInjector(handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context)),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  textBlock(header: Strings.connected, text: Strings.subscriptions),
                ],
              ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class textBlock extends StatelessWidget {
  final String header;
  final String? text;
  const textBlock({super.key, required this.header, this.text});

    Widget build(BuildContext context){
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            header,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            )
          ),
          SizedBox(height: 8),
          Text(
            text!,
            style: TextStyle(
              color: Colors.black.withOpacity(0.550000011920929),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            )
          )
        ]);
    }
}