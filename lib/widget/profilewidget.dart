import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final String imagePath;
  final VoidCallback onClicked;

  const ProfileWidget({
    Key? key,
    required this.imagePath,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;

    return Center(
      child: Stack(
        children: [
          buildImage(),
          Positioned(
            bottom: 0,
            right: 4,
            child: buildEditIcon(color),
          ),
        ],
      ),
    );
  }
}

Widget buildImage() {
  final image = Image.asset(
    'images/gamteng.jpg',
    fit: BoxFit.cover,
  );

  return ClipOval(
    child: Material(
      color: Colors.transparent,
      child: Ink.image(
        image: image.image,
        fit: BoxFit.cover,
        width: 128,
        height: 128,
        child: InkWell(
          onTap: () {}
        ),
      ),
    ),
  );
}

Widget buildEditIcon(Color color) => buildCircle(
  color : Colors.white,
  all: 3,
  child: buildCircle(
    color: color,
    all: 8,
    child: Icon(
      Icons.edit,
      color: Colors.white,
      size: 15,
    ),
  ),
);

Widget buildCircle({
  required Widget child,
  required double all,
  required Color color,
}) => 
  Container(
    decoration: BoxDecoration(
      color: color,
      shape: BoxShape.circle,
    ),
    child: Padding(
      padding: EdgeInsets.all(all),
      child: child,
    ),
  );
