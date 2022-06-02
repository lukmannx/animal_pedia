import 'package:AnimalPedia/shared/listitem.dart';
import 'package:flutter/material.dart';

Widget listWidget(ListItem item) {
  return Card(
    elevation: 2.0,
    margin: EdgeInsets.only(bottom: 20.0),
    child: Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          Hero(
            tag: item,
            child: Container(
              width: 80.0,
              height: 80.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(item.imgUrl), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(8.0)),
            ),
          ),
          SizedBox(
            width: 5.0,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Text(
                    item.newsTitle,
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Row(
                    children: [
                      Icon(Icons.location_pin),
                      Text(
                        item.location,
                        style: TextStyle(fontSize: 12.0),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(Icons.date_range),
                      Text(
                        item.species,
                        style: TextStyle(fontSize: 12.0),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
