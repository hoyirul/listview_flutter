import 'package:flutter/material.dart';
import 'package:listview_flutter/partials/mycolor.dart';
import 'package:listview_flutter/partials/mystyle.dart';

class MyCategoryWidget extends StatelessWidget {
  MyCategoryWidget({super.key});

  final categories = ['Bronze', 'Silver', 'Platinum', 'Diamond'];

  final picker = [accentblue, accentorange, accentred, purple];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0.0),
      height: 150.0,
      child: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Card(
                color: picker[index],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: Container(
                  padding: const EdgeInsets.all(15.0),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
                  height: 150.0,
                  width: 150.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        categories[index],
                        style: categoryTitle,
                      ),
                      const Text(
                        'Specialist',
                        style: categorySubtitle,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        padding: const EdgeInsets.only(top: 15.0),
      ),
    );
  }
}
