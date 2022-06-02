import 'package:flutter/material.dart';

import '../data/data_dummy.dart';
import 'detail_screen.dart';
import '../widget/listwidget.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 20.0),
            child: Text(
              "Recommendation",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(

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
