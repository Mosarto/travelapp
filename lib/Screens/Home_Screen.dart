import 'package:flutter/material.dart';
import 'package:blur/blur.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travelapp/Containers/Categories_Container.dart';
import 'package:travelapp/Containers/Food_Container.dart';
import 'package:travelapp/Containers/Pictures_Container.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PicturesContainer(),
            CategoriesContainer(),
            FoodContainer(),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: MediaQuery.of(context).size.width - 35,
        height: 100,
        padding: EdgeInsets.only(bottom: 20, right: 3),
        child: Container(
          color: Colors.white30,
        ).blurred(
          colorOpacity: 0.5,
          borderRadius: BorderRadius.circular(15),
          overlay: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 26),
                  SvgPicture.asset(
                    'assets/icons/house.svg',
                  ),
                  Spacer(),
                  Container(
                    height: 4,
                    width: 4,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff2F80ED),
                    ),
                  ),
                  SizedBox(height: 15),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 26),
                  SvgPicture.asset(
                    'assets/icons/love.svg',
                  ),
                  Spacer(),
                  Container(
                    height: 4,
                    width: 4,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.transparent,
                    ),
                  ),
                  SizedBox(height: 15),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 26),
                  SvgPicture.asset(
                    'assets/icons/date.svg',
                  ),
                  Spacer(),
                  Container(
                    height: 4,
                    width: 4,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.transparent,
                    ),
                  ),
                  SizedBox(height: 15),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 26),
                  SvgPicture.asset(
                    'assets/icons/chat.svg',
                  ),
                  Spacer(),
                  Container(
                    height: 4,
                    width: 4,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.transparent,
                    ),
                  ),
                  SizedBox(height: 15),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
