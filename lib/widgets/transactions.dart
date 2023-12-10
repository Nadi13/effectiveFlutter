import 'package:flutter/material.dart';
import 'package:fall_2023_project/Ui/transactionsUi.dart';

class TransactionBlock extends StatelessWidget {
  final List<TransactionsUi> transactions;
  const TransactionBlock({super.key, required this.transactions});

  @override
  Widget build(BuildContext context){
    return SizedBox(
      height:64.0 * transactions.length,
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        separatorBuilder: (_, __) => const Divider(
                  height: 1,
                  thickness: 0,
                  indent: 65,
                  endIndent: 0,
                  color: Colors.grey,
        ),
          itemCount: transactions.length,
          itemBuilder: (context, index) {
            return ListTile(
              contentPadding: EdgeInsets.only(left:16, right: 8),
              title: Text(transactions[index].title, style:TextStyle(fontSize: 16, fontWeight: FontWeight.w500), softWrap: true),
              subtitle: Text(transactions[index].subtitle != null ? transactions[index].subtitle! : "", style:TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
              leading: Image.asset(transactions[index].image, width:36, height:36),
              trailing: IconButton(
                icon: Icon(Icons.chevron_right),
                onPressed: () {}),


            );
          },
        ),
    );
  }
}