import 'package:flutter/material.dart';
import 'package:listview_flutter/partials/mycolor.dart';

class TopUserWidget extends StatelessWidget {
  TopUserWidget({super.key});

  final topUsers = [
    ['Ferdi Rahmahadi', 'assets/img/male.png'],
    ['Yuliana Hermiar', 'assets/img/female.png'],
    ['Maulana Ishak', 'assets/img/maleasia.png'],
    ['Fajar Nugros', 'assets/img/malearabic.png'],
    ['Savira Enimas', 'assets/img/femaleasia.png'],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0.0),
      child: ListView.builder(
        itemCount: topUsers.length,
        shrinkWrap: true,
        padding: const EdgeInsets.only(top: 15.0),
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(0.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Row(
                children: [
                  Container(
                    height: 100.0,
                    padding: const EdgeInsets.all(15.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset(topUsers[index][1]),)
                  ),

                  Container(
                    padding: const EdgeInsets.all(0.0),
                    width: 180.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(topUsers[index][0], style: const TextStyle(
                            fontFamily: 'Montserrat-SemiBold',
                            fontSize: 16
                          ),)),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Specialist', style: TextStyle(
                            color: subtitle
                          ),)),
                      ],
                    ),
                  ),

                ],
              )
              ),
            );
        },
      ),
    );
  }
}
