import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../routes/app_pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CardWidget(
            imageKiri: 'assets/images/icons/total_pasien.svg',
            titleKiri: "Total Pasien",
            valueKiri: "1.345",
            imageKanan: 'assets/images/icons/pasien_poli.svg',
            titleKanan: "Pasien Poliklinik",
            valueKanan: "460",
          ),
          SizedBox(height: 15),
          CardWidget(
            imageKiri: 'assets/images/icons/hemode.svg',
            titleKiri: "Pasien Hemodialisa",
            valueKiri: "840",
            imageKanan: 'assets/images/icons/igd.svg',
            titleKanan: "Pasien IGD",
            valueKanan: "242",
          ),
          SizedBox(height: 15),
          CardWidget(
            imageKiri: 'assets/images/icons/labro.svg',
            titleKiri: "Laboratorium",
            valueKiri: "200",
            imageKanan: 'assets/images/icons/resep.svg',
            titleKanan: "Jumlah Resep",
            valueKanan: "120",
          ),
          SizedBox(height: 15),
          CardWidget(
            imageKiri: 'assets/images/icons/bpjs.svg',
            titleKiri: "Pasien BPJS",
            valueKiri: "1.098",
            imageKanan: 'assets/images/icons/total_pasien.svg',
            titleKanan: "Pasien Umum",
            valueKanan: "200",
            color: 0xffddfae4,
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String titleKanan;
  final String valueKanan;
  final String imageKanan;
  final String titleKiri;
  final String valueKiri;
  final String imageKiri;
  final int? color;
  const CardWidget({
    super.key,
    required this.titleKanan,
    required this.valueKanan,
    required this.imageKanan,
    required this.titleKiri,
    required this.valueKiri,
    required this.imageKiri,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CardKiri(
          image: imageKiri,
          title: titleKiri,
          value: valueKiri,
          color: color,
        ),
        CardKanan(
          image: imageKanan,
          title: titleKanan,
          value: valueKanan,
          color: color,
        ),
      ],
    );
  }
}

class CardKanan extends StatelessWidget {
  final String title;
  final String value;
  final String image;
  final int? color;
  const CardKanan({
    super.key,
    required this.title,
    required this.value,
    required this.image,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.CHARTZ, parameters: {'title': title});
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 2 - 19,
        margin: const EdgeInsets.only(left: 16.0),
        padding:
            const EdgeInsets.only(right: 16, left: 16, bottom: 20, top: 10),
        decoration: BoxDecoration(
          color: Color(color ?? 0xfff6f5f5),
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
            bottomLeft: Radius.circular(20.0),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: CircleAvatar(
                radius: 32,
                backgroundColor: Colors.white,
                child: SvgPicture.asset(
                  image,
                  height: 30,
                  width: 30,
                  color: Colors.blue,
                ),
              ),
            ),
            Text(
              value,
              style: const TextStyle(
                fontSize: 20.0,
                color: Colors.brown,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 15.0,
                color: Color(0xff4babe7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardKiri extends StatelessWidget {
  final String title;
  final String value;
  final String image;
  final int? color;
  const CardKiri({
    super.key,
    required this.title,
    required this.value,
    required this.image,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.CHARTZ, parameters: {'title': title});
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 2 - 25,
        margin: const EdgeInsets.only(left: 16.0),
        padding:
            const EdgeInsets.only(right: 16, left: 16, bottom: 20, top: 10),
        decoration: BoxDecoration(
          color: Color(color ?? 0xfff6f5f5),
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
            bottomLeft: Radius.circular(20.0),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: CircleAvatar(
                radius: 32,
                backgroundColor: Colors.white,
                child: SvgPicture.asset(
                  image,
                  height: 30,
                  width: 30,
                  color: Colors.blue,
                ),
              ),
            ),
            Text(
              value,
              style: const TextStyle(
                  fontSize: 20.0,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 15.0,
                color: Color(0xff4babe7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
