import 'package:flutter/material.dart';

class WidgetTitlePoli2 extends StatefulWidget {
  const WidgetTitlePoli2({Key? key}) : super(key: key);

  @override
  _WidgetTitlePoli2State createState() => _WidgetTitlePoli2State();
}

class _WidgetTitlePoli2State extends State<WidgetTitlePoli2> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              "Static Lainnya",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          // Icon(Icons.arrow_forward_ios_outlined, size: 15,)
        ],
      ),
    );
  }
}
