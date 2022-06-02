import 'package:AnimalPedia/widget/gridwallpaper.dart';
import 'package:flutter/material.dart';

class WallpaperPage extends StatefulWidget {
  const WallpaperPage({ Key? key }) : super(key: key);

  @override
  State<WallpaperPage> createState() => _WallpaperPageState();
}

class _WallpaperPageState extends State<WallpaperPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: GridWidget(),
      ),
    );
  }
}