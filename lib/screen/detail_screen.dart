import 'package:AnimalPedia/shared/listitem.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String tag;
  final ListItem item;

  DetailsScreen({Key? key, required this.item, required this.tag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Hero(
                    tag: item,
                    child: Image.network(item.imgUrl),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        Text(
                          item.newsTitle,
                          style: TextStyle(
                              fontSize: 22.0, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_pin),
                            Text(
                              item.location,
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Icon(Icons.donut_large),
                            Text(
                              item.species,
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          item.description,
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12.0),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
