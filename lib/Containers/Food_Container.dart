import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FoodContainer extends StatelessWidget {
  final List<String> burgurs = [
    'assets/img/burge1.png',
    'assets/img/burge2.png',
    'assets/img/burge3.png',
  ];

  final List<String> burgurstitle = [
    'Ritz-Carlton',
    'KFC',
    'Streetside Cafe',
  ];

  final List<double> burgursscrore = [
    4.2,
    3.9,
    4.2,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: StaggeredGridView.countBuilder(
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 4,
          itemCount: 3,
          mainAxisSpacing: 28.0,
          crossAxisSpacing: 28.0,
          staggeredTileBuilder: (int index) =>
              new StaggeredTile.count(2, index.isEven ? 2.3 : 2.7),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(burgurs[index]),
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      burgurstitle[index],
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          burgursscrore[index].toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                            height: 1.3,
                          ),
                        ),
                        SizedBox(width: 5),
                        SvgPicture.asset(
                          'assets/icons/star.svg',
                          height: 18,
                          width: 18,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
