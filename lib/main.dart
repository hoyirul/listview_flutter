import 'package:flutter/material.dart';
import 'package:listview_flutter/additionals/banner.dart';
import 'package:listview_flutter/additionals/category.dart';
import 'package:listview_flutter/additionals/user.dart';
import 'package:listview_flutter/additionals/widgets.dart';
import 'package:listview_flutter/partials/mycolor.dart';
import 'package:listview_flutter/partials/mystyle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, scaffoldBackgroundColor: bg),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required String title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            MyWidget().header,
            const SizedBox(
              height: 15.0,
            ),
            const MyBanner(
              key: null,
            ),
            const SizedBox(
              height: 15.0,
            ),

            Container(
              padding: const EdgeInsets.all(0),
              child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Categories",
                    style: title,
                  )),
            ),

            MyCategoryWidget(),

            const SizedBox(height: 15.0,),
            
            Container(
              padding: const EdgeInsets.all(0),
              child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Top Users",
                    style: title,
                  )),
            ),

            // top users
            TopUserWidget(),
          ],
        ),
      ),
    );
  }
}
