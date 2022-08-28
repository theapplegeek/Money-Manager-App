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
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment(0.5, 0.0),
                colors: [
                  Colors.lightBlue,
                  Color(0xFF5FCDFD),
                ],
              ),
              borderRadius: BorderRadius.all(Radius.circular(10)),
              // border: Border.all(
              //     color: Colors.white, width: 1, style: BorderStyle.solid),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          ),
          ClipPath(
            clipper: CutClipper(),
            child: Container(
              height: 100,
              width: (MediaQuery.of(context).size.width - 30) * 0.5,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Colors.red,
                    Color(0xFFFD6363),
                  ],
                ),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(10)),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            ),
          ),
          Container(
            height: 100,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Income'),
                    Text('134.05', style: TextStyle(fontSize: 21)),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text('Expenses', textAlign: TextAlign.end),
                    Text(
                      '134.05',
                      textAlign: TextAlign.end,
                      style: TextStyle(fontSize: 21),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CutClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var points = [
      const Offset(45, 10),
      Offset(15, size.height - 10),
      Offset(size.width - 15, size.height - 10),
      Offset(size.width - 15, 10),
    ];
    Path path = Path();
    path.addPolygon(points, false);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<dynamic> oldClipper) {
    return false;
  }
}
