// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TCoursePriceText extends StatelessWidget {
  const TCoursePriceText({
    Key? key,
    required this.price,
    this.currencySign = "Rs",
    this.maxlines = 1,
    this.islarge = false,
    this.lineThrough = false,
  }) : super(key: key);
  final String currencySign, price;
  final int maxlines;
  final bool islarge;
  final bool lineThrough;

  @override
  Widget build(BuildContext context) {
    return Text(
      currencySign + price,
      maxLines: maxlines,
      overflow: TextOverflow.ellipsis,
      style: islarge
          ? Theme.of(context).textTheme.headlineMedium!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null)
          : Theme.of(context).textTheme.titleLarge!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null),
    );
  }
}
