import 'package:flutter/material.dart';
import 'package:fall_2023_project/Ui/transactionsUi.dart';
import 'package:fall_2023_project/myTools/colors.dart';
import 'package:fall_2023_project/myTools/fontsTheme.dart';

class TransactionBlock extends StatelessWidget {
  final List<TransactionsUi> transactions;
  const TransactionBlock({super.key, required this.transactions});

  @override
  Widget build(BuildContext context){
    return SizedBox(
      height:81.0 * transactions.length,
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (_, __) => const Divider(
          height: 1,
          thickness: 0,
          indent: 68,
          endIndent: 0,
          color: MyColors.divider,
        ),
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          if(transactions[index].subtitle == null){
            return ListTile(
              contentPadding: EdgeInsets.only(left:16, right: 8), onTap: () => {},
              title: Text(transactions[index].title, style:sfProTextTheme.bodyMedium, softWrap: true),
              leading: Image.asset(transactions[index].image, width:36, height:36, fit: BoxFit.cover),
              trailing: Icon(
                Icons.chevron_right,
                size:24
              ),
            );
          }
            return ListTile(
              contentPadding: EdgeInsets.only(left:16, right: 8), onTap: () => {},
              title: Text(transactions[index].title, style:sfProTextTheme.bodyMedium, softWrap: true),
              subtitle: Text(transactions[index].subtitle!, style:sfProTextTheme.labelSmall),
              leading: Image.asset(transactions[index].image, width:36, height:36, fit: BoxFit.cover),
              trailing: Icon(
                Icons.chevron_right,
                size:24
              ),
            );
        },
      ),
    );
  }
}