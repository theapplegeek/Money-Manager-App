import 'package:flutter/material.dart';

class Stats extends StatelessWidget {
  const Stats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Container(
            height: 100,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              // border: Border.all(
              //     color: Colors.white, width: 1, style: BorderStyle.solid),
            ),
            // padding: const EdgeInsets.all(50),
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          ),
          ClipPath(
            clipper: CutClipper(),
            child: Container(
              height: 100,
              width: (MediaQuery.of(context).size.width - 30) / 100 * 50,
              decoration: const BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(10)),
              ),
              // padding: const EdgeInsets.all(50),
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            ),
          ),
          Container(
            height: 100,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              // border: Border.all(
              //     color: Colors.white, width: 1, style: BorderStyle.solid),
            ),
            // padding: const EdgeInsets.all(50),
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          ),
        ],
      ),
    );
  }
}

class CutClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    print('width ${size.width}');
    print('height ${size.height}');
    Path path = Path();
    path.moveTo(size.width * 0.1, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.height, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<dynamic> oldClipper) {
    return false;
  }
}
