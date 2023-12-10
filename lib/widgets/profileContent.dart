import 'package:fall_2023_project/widgets/chips.dart';
import 'package:flutter/material.dart';
import 'package:fall_2023_project/myTools/strings.dart';
import 'package:fall_2023_project/widgets/textBlock.dart';
import 'package:fall_2023_project/widgets/cards.dart';
import 'package:fall_2023_project/Ui/cardsUi.dart';
import 'package:fall_2023_project/Ui/transactionsUi.dart';
import 'package:fall_2023_project/widgets/transactions.dart';

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
        image: 'assets/percent_fill.png',
        title: Strings.translations,
        subtitle: Strings.autoRenewal,
        cost: Strings.pay
      )
    ];

    List<TransactionsUi> transactions = [
      TransactionsUi(
        image: 'assets/speedometer.png',
        title: Strings.limit,
        subtitle: Strings.transfersAndPayment,
      ),
      TransactionsUi(
        image: 'assets/percent.png',
        title: Strings.transfers,
        subtitle: Strings.balance,
      ),
      TransactionsUi(
        image: 'assets/forward_back.png',
        title: Strings.information,
        subtitle: null,
      )
    ];

    var items = [Strings.food,
                 Strings.selfDevelopment,
                 Strings.technologies, 
                 Strings.home,
                 Strings.leisure, 
                 Strings.care, 
                 Strings.science];

    return  Scaffold( 
      body: Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 20),
        child: Builder( 
          builder: (BuildContext context) {
            return CustomScrollView(
              slivers: <Widget>[
                SliverOverlapInjector(handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context)),
                SliverToBoxAdapter(
                  child: TextBlock(header: Strings.connected, text: Strings.subscriptions),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(top:16),
                    child: Cards(cards:cards)
                  )
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding:  EdgeInsets.only(top:32),
                    child: TextBlock(header: Strings.tariffs, text: Strings.transactions),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(top:0),
                    child: TransactionBlock(transactions:transactions),
                  )
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding:  EdgeInsets.only(top:40),
                    child: TextBlock(header: Strings.interests, text: Strings.stories),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.only(top:12, bottom:20),
                    child: SelectableChips(items: items),
                  )
                )
              ],
            );
          },
        )
      )
    );
  }
}