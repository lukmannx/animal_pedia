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
                  Image.network(url),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                      child: Text('Download'),
                      onPressed: () async {
                        await GallerySaver.saveImage(url, albumName: 'Flutter');
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
