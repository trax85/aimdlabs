import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  static const double _constSidePadding = 20;
  static const double _topPadding = 30;
  static const double _greyBoxWidth = 300;
  static const double _boxHeight = 40;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: LayoutBuilder(
            builder: (context, constraints) {
              double _sidePadding = constraints.maxWidth * 0.01;
              double _dynmWidth = (constraints.maxWidth/2) - _greyBoxWidth;
              return Column(
                children: [
                  const SizedBox(height: _topPadding,),
                  //First card
                  Row(
                    children: [
                      SizedBox(width: _sidePadding,),
                      Card(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.red, width: 2),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        color: Colors.redAccent,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: _topPadding,),
                            //Grey box
                            Row(
                              children: [
                                const SizedBox(width: _constSidePadding,),
                                Container(
                                  color: Colors.grey,
                                  width: _greyBoxWidth,
                                  height: _boxHeight,
                                )
                              ],
                            ),
                            const SizedBox(height: _topPadding,),
                            //green box
                            Row(
                              children: [
                                const SizedBox(width: _constSidePadding,),
                                Container(
                                  color: Colors.greenAccent,
                                  width: constraints.maxWidth - (_constSidePadding * 4 + 2),
                                  height: _boxHeight,
                                ),
                                const SizedBox(width: _constSidePadding,),
                              ],
                            ),
                            const SizedBox(height: _topPadding,),
                            //card end
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: _topPadding,),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        child: Column(
                          children: [
                            const SizedBox(height: _boxHeight/2,),
                            Row(
                              children: [
                                SizedBox(width: _sidePadding,),
                                Card(
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(color: Colors.red, width: 2),
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                  color: Colors.redAccent,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: _topPadding * 2,),
                                      //green box
                                      Row(
                                        children: [
                                          const SizedBox(width: _constSidePadding,),
                                          Container(
                                            color: Colors.greenAccent,
                                            width: constraints.maxWidth - (_constSidePadding * 4 + 2),
                                            height: _boxHeight,
                                          ),
                                          const SizedBox(width: _constSidePadding,),
                                        ],
                                      ),
                                      const SizedBox(height: _topPadding,),
                                      //card end
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ),
                      Positioned(
                        top: 0.0,
                        child: Container(
                          color: Colors.grey,
                          width: _greyBoxWidth,
                          height: _boxHeight,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
        ),
    );
  }
}