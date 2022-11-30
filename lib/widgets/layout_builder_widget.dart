import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  const AppLayoutBuilderWidget({Key? key, this.isColor}) : super(key: key);
  final bool? isColor;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder:
          (BuildContext context, BoxConstraints constraints) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
            (constraints.constrainWidth() / 15).floor(),
                (index) => SizedBox(
              height: 1,
              width: 5,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: isColor == null
                      ? Colors.white
                      : Colors.grey.shade400,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
