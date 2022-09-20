import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:listview_flutter/partials/mystyle.dart';

class MyBanner extends StatelessWidget {
  const MyBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 150.0,
                // width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: const [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Mochammad",
                        style: cardNameTitle,
                      ),
                    ),
                    SizedBox(
                      height: 3.0,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Hairullah",
                        style: cardNameTitle,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
                        style: cardNameSubtitle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(10.0),
                height: 150.0,
                child: SvgPicture.asset("assets/svg/illustrator.svg"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
