import 'package:flutter/material.dart';

import 'mydropdown.dart';

class WidgetTitlePoli1 extends StatefulWidget {
  const WidgetTitlePoli1({Key? key}) : super(key: key);

  @override
  _WidgetTitlePoli1State createState() => _WidgetTitlePoli1State();
}

class _WidgetTitlePoli1State extends State<WidgetTitlePoli1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
      child: Row(
        children: [
          Expanded(
            child: Text("Dasboard",style: TextStyle (fontSize: 20, fontWeight: FontWeight.bold),),
          ),
          SizedBox(
            width: 10,
          ),
          WidgetTitle3(),
          SizedBox(
            width: 10,
          ),
          // Icon(Icons.arrow_forward_ios_outlined, size: 15,)
        ],
      ),
    );
  }
}
