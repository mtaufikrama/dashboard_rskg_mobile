import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../routes/app_pages.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              child: Row(
                children: [
                  GestureDetector(
                  onTap: (){ Get.toNamed(Routes.CHARTZ);},
                  child : Container(
                    height: 140,
                    width: MediaQuery.of(context).size.width / 2 - 25, // minus 32 due to the margin
                    margin: EdgeInsets.only(left: 16.0),
                    padding: EdgeInsets.only(right: 16, left: 16, bottom: 20, top: 10),
                    decoration: BoxDecoration(
                      color: Color(0xfff6f5f5), // background color of the cards
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
                            Text("             ", style: TextStyle(fontSize: 20.0, color: Colors.brown, fontWeight: FontWeight.bold)),
                            CircleAvatar(
                              radius: 32,
                              backgroundColor: Colors.white,
                              child: SvgPicture.asset(
                                'assets/images/icons/total_pasien.svg',
                                height: 30,
                                width: 30,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                        // place here your image
                        Text("1.345", style: TextStyle(fontSize: 20.0, color: Colors.brown, fontWeight: FontWeight.bold)),
                        Text("Total Pasien", style: TextStyle(fontSize: 15.0, color: Color(0xff4babe7))),
                      ],
                    ),
                  ),
                  ),
      GestureDetector(
        onTap: (){ Get.toNamed(Routes.CHARTZ_PASIEN_POLI);},
        child : Container(
                    height: 140,
                    width: MediaQuery.of(context).size.width / 2 - 19, // minus 32 due to the margin
                    margin: EdgeInsets.only(left: 16.0),
                    padding: EdgeInsets.only(right: 16, left: 16, bottom: 20, top: 10),
                    decoration: BoxDecoration(
                      color: Color(0xfff6f5f5), // background color of the cards
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
                            Text("              ", style: TextStyle(fontSize: 20.0, color: Colors.brown, fontWeight: FontWeight.bold)),
                            CircleAvatar(
                              radius: 32,
                              backgroundColor: Colors.white,
                              child: SvgPicture.asset(
                                'assets/images/icons/pasien_poli.svg',
                                height: 30,
                                width: 30,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                        // place here your image
                        Text("460", style: TextStyle(fontSize: 20.0, color: Colors.brown, fontWeight: FontWeight.bold)),
                        Text("Pasien Poliklinik", style: TextStyle(fontSize: 15.0, color: Color(0xff4babe7))),
                      ],
                    ),
                  ),
      ),
                ],
              ),
            ),
            Container(
              height: 150,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){ Get.toNamed(Routes.CHARTZ_PASIEN_HEMODIALISA);},
              child : Container(
                    height: 140,
                    width: MediaQuery.of(context).size.width / 2 - 25, // minus 32 due to the margin
                margin: EdgeInsets.only(left: 16.0,top: 10),
                    padding: EdgeInsets.only(right: 16, left: 16, bottom: 5, top: 10),
                    decoration: BoxDecoration(
                      color: Color(0xfff6f5f5), // background color of the cards
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
                            Text("             ", style: TextStyle(fontSize: 20.0, color: Colors.brown, fontWeight: FontWeight.bold)),
                            CircleAvatar(
                              radius: 32,
                              backgroundColor: Colors.white,
                              child: SvgPicture.asset(
                                'assets/images/icons/hemode.svg',
                                height: 30,
                                width: 30,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                        // place here your image
                        Text("840", style: TextStyle(fontSize: 20.0, color: Colors.brown, fontWeight: FontWeight.bold)),
                        Text("Pasien Hemodialisa", style: TextStyle(fontSize: 15.0, color: Color(0xff4babe7))),
                      ],
                    ),
                  ),
                  ),
      GestureDetector(
        onTap: (){ Get.toNamed(Routes.CHARTZ_PASIEN_IGD);},
        child : Container(
                    height: 140,
                    width: MediaQuery.of(context).size.width / 2 - 19, // minus 32 due to the margin
          margin: EdgeInsets.only(left: 16.0,top: 10),
                    padding: EdgeInsets.only(right: 16, left: 16, bottom: 20, top: 10),
                    decoration: BoxDecoration(
                      color: Color(0xfff6f5f5), // background color of the cards
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
                            Text("              ", style: TextStyle(fontSize: 20.0, color: Colors.brown, fontWeight: FontWeight.bold)),
                            CircleAvatar(
                              radius: 32,
                              backgroundColor: Colors.white,
                              child: SvgPicture.asset(
                                'assets/images/icons/igd.svg',
                                height: 30,
                                width: 30,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                        // place here your image
                        Text("242", style: TextStyle(fontSize: 20.0, color: Colors.brown, fontWeight: FontWeight.bold)),
                        Text("Pasien IGD", style: TextStyle(fontSize: 15.0, color: Color(0xff4babe7))),
                      ],
                    ),
                  ),
      ),
                ],
              ),
            ),
            Container(
              height: 150,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){ Get.toNamed(Routes.CHARTZ_LABORATORIUM);},
              child : Container(
                    height: 140,
                    width: MediaQuery.of(context).size.width / 2 - 25, // minus 32 due to the margin
                margin: EdgeInsets.only(left: 16.0,top: 10),
                    padding: EdgeInsets.only(right: 16, left: 16, bottom: 20, top: 10),
                    decoration: BoxDecoration(
                      color: Color(0xfff6f5f5), // background color of the cards
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
                            Text("             ", style: TextStyle(fontSize: 20.0, color: Colors.brown, fontWeight: FontWeight.bold)),
                            CircleAvatar(
                              radius: 32,
                              backgroundColor: Colors.white,
                              child: SvgPicture.asset(
                                'assets/images/icons/labro.svg',
                                height: 30,
                                width: 30,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                        // place here your image
                        Text("280", style: TextStyle(fontSize: 20.0, color: Colors.brown, fontWeight: FontWeight.bold)),
                        Text("Laboratorium", style: TextStyle(fontSize: 15.0, color: Color(0xff4babe7))),
                      ],
                    ),
                  ),
                  ),
      GestureDetector(
        onTap: (){ Get.toNamed(Routes.CHARTZ_JUMLAH_RESEP);},
        child : Container(
                    height: 140,
                    width: MediaQuery.of(context).size.width / 2 - 19, // minus 32 due to the margin
          margin: EdgeInsets.only(left: 16.0,top: 10),
                    padding: EdgeInsets.only(right: 16, left: 16, bottom: 20, top: 10),
                    decoration: BoxDecoration(
                      color: Color(0xfff6f5f5), // background color of the cards
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
                            Text("              ", style: TextStyle(fontSize: 20.0, color: Colors.brown, fontWeight: FontWeight.bold)),
                            CircleAvatar(
                              radius: 32,
                              backgroundColor: Colors.white,
                              child: SvgPicture.asset(
                                'assets/images/icons/resep.svg',
                                height: 50,
                                width: 50,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                        // place here your image
                        Text("120", style: TextStyle(fontSize: 20.0, color: Colors.brown, fontWeight: FontWeight.bold)),
                        Text("Jumlah Resep", style: TextStyle(fontSize: 15.0, color: Color(0xff4babe7))),
                      ],
                    ),
                  ),
      ),
                ],
              ),
            ),
            Container(
              height: 150,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){ Get.toNamed(Routes.CHARTZ_PASIEN_BPJS);},
              child : Container(
                    height: 140,
                    width: MediaQuery.of(context).size.width / 2 - 25, // minus 32 due to the margin
                margin: EdgeInsets.only(left: 16.0,top: 10),
                    padding: EdgeInsets.only(right: 16, left: 16, bottom: 20, top: 10),
                    decoration: BoxDecoration(
                      color: Color(0xffddfae4), // background color of the cards
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
                            Text("             ", style: TextStyle(fontSize: 20.0, color: Colors.brown, fontWeight: FontWeight.bold)),
                            CircleAvatar(
                              radius: 32,
                              backgroundColor: Colors.white,
                              child: SvgPicture.asset(
                                'assets/images/icons/bpjs.svg',
                                height: 260,
                                width: 260,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                        // place here your image
                        Text("1.008", style: TextStyle(fontSize: 20.0, color: Colors.brown, fontWeight: FontWeight.bold)),
                        Text("Pasien BPJS", style: TextStyle(fontSize: 15.0, color: Color(0xff4babe7))),
                      ],
                    ),
                  ),
                  ),
      GestureDetector(
        onTap: (){ Get.toNamed(Routes.CHARTZ_PASIEN_UMUM);},
        child : Container(
                    height: 140,
                    width: MediaQuery.of(context).size.width / 2 - 19, // minus 32 due to the margin
          margin: EdgeInsets.only(left: 16.0,top: 10),
                    padding: EdgeInsets.only(right: 16, left: 16, bottom: 20, top: 10),
                    decoration: BoxDecoration(
                      color: Color(0xffddfae4), // background color of the cards
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
                            Text("              ", style: TextStyle(fontSize: 20.0, color: Colors.brown, fontWeight: FontWeight.bold)),
                            CircleAvatar(
                              radius: 32,
                              backgroundColor: Colors.white,
                              child: SvgPicture.asset(
                                'assets/images/icons/total_pasien.svg',
                                height: 30,
                                width: 30,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                        // place here your image
                        Text("336", style: TextStyle(fontSize: 20.0, color: Colors.brown, fontWeight: FontWeight.bold)),
                        Text("Pasien Umum", style: TextStyle(fontSize: 15.0, color: Color(0xff4babe7))),
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