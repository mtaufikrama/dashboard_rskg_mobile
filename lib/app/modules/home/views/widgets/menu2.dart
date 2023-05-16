import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../routes/app_pages.dart';

class HomePage2 extends StatefulWidget {
  @override
  _HomePage2 createState() => _HomePage2();
}

class _HomePage2 extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 140,
              child: Row(
                children: [
                  GestureDetector(
                  onTap: (){ Get.toNamed(Routes.CHARTZ_KEUNGAN);},
                  child : Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width / 1 - 30, // minus 32 due to the margin
                    margin: EdgeInsets.only(left: 16.0),
                    padding: EdgeInsets.only(right: 16, left: 16, bottom: 20, top: 10),
                    decoration: BoxDecoration(
                      color: Color(0xfff5f5f5), // background color of the cards
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                          topLeft: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end, // posion the everything to the bottom
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 22,
                              backgroundColor: Colors.white,
                              child: SvgPicture.asset(
                                'assets/images/icons/total_pasien.svg',
                                height: 30,
                                width: 30,
                                color: Colors.blue,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Keuangan", style: TextStyle(fontSize: 16.0, color: Colors.brown, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
  }
}