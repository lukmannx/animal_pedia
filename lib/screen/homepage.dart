import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../data/data_dummy.dart';
import 'detail_screen.dart';
import '../widget/listwidget.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

final List<String> imageList = [
  "https://images.unsplash.com/photo-1654080522969-d40e4837ab3d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDJ8SnBnNktpZGwtSGt8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1653896170250-2bbaade50d23?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDEyfEpwZzZLaWRsLUhrfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1642432423229-f8d7701f4758?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDMwfEpwZzZLaWRsLUhrfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1653238523968-467e036bb15f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDQxfEpwZzZLaWRsLUhrfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
  "https://ichef.bbci.co.uk/news/640/cpsprodpb/18034/production/_97765389_naruto.jpg",
];

class _homePageState extends State<homePage>
    with SingleTickerProviderStateMixin {
  List<Tab> _tabList = [
    Tab(
      child: Text("Random"),
    ),
    Tab(
      child: Text("Endangered"),
    ),
    Tab(
      child: Text("Bonuses"),
    ),
    // Tab(
    //   child: Text("Editor Choice"),
    // ),
    // Tab(
    //   child: Text("Category"),
    // ),
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: _tabList.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 20.0),
            child: Column(
              children: [
                Text(
                  "Recommendation",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  child: CarouselSlider(
                    options: CarouselOptions(
                        height: 180,
                        enlargeCenterPage: true,
                        enableInfiniteScroll: false,
                        autoPlay: true),
                    items: imageList
                        .map((e) => ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Stack(
                                fit: StackFit.expand,
                                children: <Widget>[
                                  Image.network(
                                    e,
                                    width: 1050,
                                    height: 350,
                                    fit: BoxFit.cover,
                                  )
                                ],
                              ),
                            ))
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
          TabBar(
            indicatorColor: Colors.black,
            isScrollable: true,
            labelColor: Colors.black,
            controller: _tabController,
            tabs: _tabList,
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    child: ListView.builder(
                      itemCount: listTiles.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailsScreen(
                                          item: listTiles[index],
                                          tag: listTiles[index].newsTitle,
                                        )));
                          },
                          child: listWidget(listTiles[index]),
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    child: ListView.builder(
                      itemCount: listPop.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailsScreen(
                                          item: listPop[index],
                                          tag: listPop[index].newsTitle,
                                        )));
                          },
                          child: listWidget(listPop[index]),
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(),
                ),
                // Padding(
                //   padding: EdgeInsets.all(8.0),
                //   child: Container(),
                // ),
                // Padding(
                //   padding: EdgeInsets.all(8.0),
                //   child: Container(),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
