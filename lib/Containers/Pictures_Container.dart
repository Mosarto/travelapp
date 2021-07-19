import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PicturesContainer extends StatefulWidget {
  @override
  _PicturesContainerState createState() => _PicturesContainerState();
}

class _PicturesContainerState extends State<PicturesContainer> {
  int picturestate = 2;

  List<bool> picturestat = [
    false,
    false,
    true,
    false,
    false,
  ];

  void picturetimer() {
    const oneSec = const Duration(seconds: 6);
    new Timer.periodic(oneSec, (Timer t) {
      setState(() {
        if (picturestate == 4) {
          picturestate = 0;
          picturestat[4] = false;
          picturestat[0] = true;
        } else {
          picturestat[picturestate] = false;
          picturestat[picturestate + 1] = true;
          picturestate += 1;
        }
      });
    });
  }

  @override
  void initState() {
    super.initState();
    picturetimer();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420,
      child: Stack(
        children: [
          Positioned(
            child: AnimatedContainer(
              margin: picturestat[4] != true
                  ? EdgeInsets.only(
                      top: picturestate == 3 ? 10 : 20,
                      left: picturestate == 2 ? 35 : 20,
                      right: picturestate == 2 ? 35 : 20,
                    )
                  : EdgeInsets.zero,
              duration: Duration(milliseconds: 665),
              curve: Curves.easeInOut,
              height:
                  picturestate == 3 || picturestate == 4 || picturestate == 2
                      ? 400
                      : 0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/montan3.jpg'),
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: picturestat[4] == true
                    ? AnimatedPadding(
                        duration: Duration(milliseconds: 400),
                        padding: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top: 30,
                          bottom: 30,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Hello Atiq,',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Wanna plan \nyour next trip?',
                              style: TextStyle(
                                color: Colors.white,
                                height: 1.1,
                                fontSize: 29,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.only(left: 4),
                              child: Text(
                                'Incan rulers',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 4),
                              child: Text(
                                'Machu Picchu, Peru',
                                style: TextStyle(
                                  height: 1.7,
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    : Container(),
              ),
            ),
          ),
          Positioned(
            child: AnimatedContainer(
              margin: picturestat[3] != true
                  ? EdgeInsets.only(
                      top: picturestat[4] == true
                          ? 0
                          : picturestate == 2
                              ? 10
                              : 20,
                      left: picturestate == 1 ? 35 : 20,
                      right: picturestate == 1 ? 35 : 20,
                    )
                  : EdgeInsets.zero,
              duration: Duration(milliseconds: 665),
              curve: Curves.easeInOut,
              height:
                  picturestate == 1 || picturestate == 2 || picturestate == 3
                      ? 400
                      : 0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/montan2.jpg'),
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: picturestat[3] == true
                    ? AnimatedPadding(
                        duration: Duration(milliseconds: 400),
                        padding: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top: 30,
                          bottom: 30,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Hello Atiq,',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Wanna plan \nyour next trip?',
                              style: TextStyle(
                                color: Colors.white,
                                height: 1.1,
                                fontSize: 29,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.only(left: 4),
                              child: Text(
                                'The Eternal City',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 4),
                              child: Text(
                                'Rome, Italy',
                                style: TextStyle(
                                  height: 1.7,
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    : Container(),
              ),
            ),
          ),
          Positioned(
            child: AnimatedContainer(
              margin: picturestat[2] != true
                  ? EdgeInsets.only(
                      top: picturestat[3] == true
                          ? 0
                          : picturestate == 1
                              ? 10
                              : 20,
                      left: picturestate == 0 ? 35 : 20,
                      right: picturestate == 0 ? 35 : 20,
                    )
                  : EdgeInsets.zero,
              duration: Duration(milliseconds: 665),
              curve: Curves.easeInOut,
              height:
                  picturestate == 2 || picturestate == 1 || picturestate == 0
                      ? 400
                      : 0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/montan4.png'),
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: picturestat[2] == true
                    ? AnimatedPadding(
                        duration: Duration(milliseconds: 400),
                        padding: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top: 30,
                          bottom: 30,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Hello Atiq,',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Wanna plan \nyour next trip?',
                              style: TextStyle(
                                color: Colors.white,
                                height: 1.1,
                                fontSize: 29,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.only(left: 4),
                              child: Text(
                                'Jasper National Park',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 4),
                              child: Text(
                                'Alberta, Canada',
                                style: TextStyle(
                                  height: 1.7,
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    : Container(),
              ),
            ),
          ),
          Positioned(
            child: AnimatedContainer(
              margin: picturestat[1] != true
                  ? EdgeInsets.only(
                      top: picturestat[2] != true ? 10 : 0,
                      left: 20,
                      right: 20,
                    )
                  : EdgeInsets.zero,
              duration: Duration(milliseconds: 665),
              curve: Curves.easeInOut,
              height: picturestate == 0 || picturestate == 1 ? 400 : 0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/montan7.jpg'),
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: picturestat[1] == true
                    ? AnimatedPadding(
                        duration: Duration(milliseconds: 400),
                        padding: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top: 30,
                          bottom: 30,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Hello Atiq,',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Wanna plan \nyour next trip?',
                              style: TextStyle(
                                color: Colors.white,
                                height: 1.1,
                                fontSize: 29,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.only(left: 4),
                              child: Text(
                                'Lake Tekapo',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 4),
                              child: Text(
                                'New Zealand',
                                style: TextStyle(
                                  height: 1.7,
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    : Container(),
              ),
            ),
          ),
          Positioned(
            child: AnimatedContainer(
              margin: picturestat[0] != true
                  ? EdgeInsets.only(
                      top: 0,
                      left: 20,
                      right: 20,
                    )
                  : EdgeInsets.zero,
              duration: Duration(milliseconds: 665),
              curve: Curves.easeInOut,
              height: picturestate == 0 ? 400 : 0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/montan6.jpg'),
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: picturestat[0] == true
                    ? AnimatedPadding(
                        duration: Duration(milliseconds: 400),
                        padding: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top: 30,
                          bottom: 30,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Hello Atiq,',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Wanna plan \nyour next trip?',
                              style: TextStyle(
                                color: Colors.white,
                                height: 1.1,
                                fontSize: 29,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.only(left: 4),
                              child: Text(
                                'Bali',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 4),
                              child: Text(
                                'Bali, Indonesia',
                                style: TextStyle(
                                  height: 1.7,
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    : Container(),
              ),
            ),
          ),
          Positioned(
            right: 20,
            top: 25,
            child: SvgPicture.asset(
              'assets/icons/search.svg',
              height: 27,
              width: 27,
            ),
          ),
          Positioned(
            bottom: 80,
            right: 20,
            child: Container(
              height: 100,
              width: 15,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        picturestat[0] = true;
                        picturestat[1] = false;
                        picturestat[2] = false;
                        picturestat[3] = false;
                        picturestat[4] = false;
                        picturestate = 0;
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 135),
                      curve: Curves.easeInOut,
                      padding: picturestat[0] != true
                          ? EdgeInsets.zero
                          : EdgeInsets.all(3.5),
                      height: picturestat[0] != true ? 5 : 15,
                      width: picturestat[0] != true ? 5 : 15,
                      decoration: BoxDecoration(
                        color: Colors.white54,
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        picturestat[0] = false;
                        picturestat[1] = true;
                        picturestat[2] = false;
                        picturestat[3] = false;
                        picturestat[4] = false;
                        picturestate = 1;
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 135),
                      curve: Curves.easeInOut,
                      padding: picturestat[1] != true
                          ? EdgeInsets.zero
                          : EdgeInsets.all(3.5),
                      height: picturestat[1] != true ? 5 : 15,
                      width: picturestat[1] != true ? 5 : 15,
                      decoration: BoxDecoration(
                        color: Colors.white54,
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        picturestat[0] = false;
                        picturestat[1] = false;
                        picturestat[2] = true;
                        picturestat[3] = false;
                        picturestat[4] = false;
                        picturestate = 2;
                        print(picturestate);
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 135),
                      curve: Curves.easeInOut,
                      padding: picturestat[2] != true
                          ? EdgeInsets.zero
                          : EdgeInsets.all(3.5),
                      height: picturestat[2] != true ? 5 : 15,
                      width: picturestat[2] != true ? 5 : 15,
                      decoration: BoxDecoration(
                        color: Colors.white54,
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        picturestat[0] = false;
                        picturestat[1] = false;
                        picturestat[2] = false;
                        picturestat[3] = true;
                        picturestat[4] = false;
                        picturestate = 3;
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 135),
                      curve: Curves.easeInOut,
                      padding: picturestat[3] != true
                          ? EdgeInsets.zero
                          : EdgeInsets.all(3.5),
                      height: picturestat[3] != true ? 5 : 15,
                      width: picturestat[3] != true ? 5 : 15,
                      decoration: BoxDecoration(
                        color: Colors.white54,
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        picturestat[0] = false;
                        picturestat[1] = false;
                        picturestat[2] = false;
                        picturestat[3] = false;
                        picturestat[4] = true;
                        picturestate = 4;
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 135),
                      curve: Curves.easeInOut,
                      padding: picturestat[4] != true
                          ? EdgeInsets.zero
                          : EdgeInsets.all(3.5),
                      height: picturestat[4] != true ? 5 : 15,
                      width: picturestat[4] != true ? 5 : 15,
                      decoration: BoxDecoration(
                        color: Colors.white54,
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
