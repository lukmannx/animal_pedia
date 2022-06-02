import 'package:AnimalPedia/widget/grid_item.dart';
import 'package:flutter/material.dart';

class GridWidget extends StatelessWidget {
  const GridWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          crossAxisCount: 3,
        ),
        itemBuilder: (context, index) => GridItem(url: 'https://source.unsplash.com/random?sig=$index'),
        itemCount: 30,
      );
}
