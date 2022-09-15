import 'package:dolphy/models/transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class ModalWithScroll extends StatelessWidget {
  const ModalWithScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = Theme.of(context).textTheme;
    return Material(
      child: CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
              leading: Container(), middle: Text('HISTORIQUE')),
          child: Container(
            // height: 300,
            padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 10),
                itemCount: transactions().length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color:
                                  transactions()[index].color.withOpacity(0.2),
                              shape: BoxShape.circle),
                          child: Icon(
                            transactions()[index].iconData,
                            color: transactions()[index].color,
                            size: 17,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                transactions()[index].title,
                                style: textStyle.bodyText1,
                              ),
                              Text(
                                transactions()[index].date,
                                style: textStyle.subtitle1,
                              ),
                            ],
                          ),
                        ),
                        Text(
                          transactions()[index].amount,
                          style: textStyle.bodyText2,
                        ),
                      ],
                    ),
                  );
                }),
          )),
    );
  }
}
