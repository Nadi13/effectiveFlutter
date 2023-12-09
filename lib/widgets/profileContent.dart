import 'package:flutter/material.dart';
import 'package:fall_2023_project/myTools/strings.dart';
import 'package:fall_2023_project/widgets/textBlock.dart';
import 'package:fall_2023_project/widgets/cards.dart';
import 'package:fall_2023_project/Ui/cardsUi.dart';

class ProfileContent extends StatelessWidget {
  const ProfileContent({super.key});

  @override
  Widget build(BuildContext context){
      List<CardsUi> cards = [
        CardsUi(
        image: 'assets/cber.png',
        title: Strings.sber,
        subtitle: Strings.payment,
        cost: Strings.pay
      ),
        CardsUi(
        image: 'assets/cber.png',
        title: Strings.sber,
        subtitle: Strings.payment,
        cost: Strings.pay
      )
    ];
    return  Scaffold (
      body: Builder( 
        builder: (BuildContext context) {
          return CustomScrollView(
            slivers: <Widget>[
              SliverOverlapInjector(handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context)),
              SliverToBoxAdapter(  
                child: SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(top:30),
                    child: TextBlock(header: Strings.connected, text: Strings.subscriptions),),
              ),
              ),
              SliverToBoxAdapter(
                child: Cards(cards:cards)
              ),
            ],
          );
        },
      )
    );
  }
}