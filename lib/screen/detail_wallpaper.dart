import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';

class DetailWallpaper extends StatelessWidget {
  const DetailWallpaper({Key? key, required this.url}) : super(key: key);
  final String url;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Hero(
                    tag: url,
                    child: Image.network(url),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                      child: Text('Download Muka Kamu'),
                      onPressed: () async {
                        await GallerySaver.saveImage(
                            'https://img.okezone.com/content/2018/03/27/18/1878631/monyet-berwajah-mirip-manusia-jadi-sensasi-viral-di-china-oHLrAN4eNh.jpg');
                      },
                    ),
                  ),
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
