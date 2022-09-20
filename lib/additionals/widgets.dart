import 'package:flutter/material.dart';
import 'package:listview_flutter/partials/mystyle.dart';

class MyWidget {
  final header = Container(
    padding: const EdgeInsets.only(top: 40.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: const [
        Align(
          alignment: Alignment.centerLeft,
          child: Text("Listview", style: titleHead),
        ),
        SizedBox(
          height: 3.0,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text("Builder Project", style: titleHead),
        ),
      ],
    ),
  );
}
