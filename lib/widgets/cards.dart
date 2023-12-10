import 'package:flutter/material.dart';
import 'package:fall_2023_project/Ui/cardsUi.dart';
import 'package:fall_2023_project/myTools/colors.dart';
import 'package:fall_2023_project/myTools/fontsTheme.dart';


class Cards extends StatelessWidget {
  final List<CardsUi> cards;
  const Cards({super.key, required this.cards});

  @override
  Widget build(BuildContext context){
    return  SizedBox(
      height: 150,
      width:216,
      child: Padding (
        padding: const EdgeInsets.only(left:16),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: cards.length,
          itemBuilder: (context, index) {
            return SizedBox(
              width: 216,
              child:  Card(
                surfaceTintColor: MyColors.primary,
                elevation: 10,
                shadowColor: MyColors.boxShadowColor,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:16, top:16),
                      child: SizedBox(
                        height:40,
                        child: Row(
                          children: [
                            Image.asset(cards[index].image,
                              width:36,
                              height: 36
                            ),
                            const SizedBox(width:12),
                            Text(cards[index].title,
                                style: sfProTextTheme.bodyMedium
                            )
                          ],
                        )
                      )
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:16),
                      child: Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
                          Text(
                            cards[index].subtitle,
                            softWrap: false, 
                            style:  sfProTextTheme.labelMedium
                          ),
                          const SizedBox(height:2),
                          Text(
                            cards[index].cost,
                            style: sfProTextTheme.labelSmall
                          )
                        ],
                      )
                    )
                  ]
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}