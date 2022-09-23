import 'package:flutter/material.dart';
import 'package:outcasterproject/screens/ForYouPage/second_ListView_Page.dart';
import 'package:outcasterproject/screens/ForYouPage/third_ListView_Page.dart';

import 'first_ListView_Page.dart';

class ForYouPage extends StatefulWidget {
  const ForYouPage({Key? key}) : super(key: key);

  @override
  State<ForYouPage> createState() => _ForYouPageState();
}

class _ForYouPageState extends State<ForYouPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        FirstListPage(),
        SecondListPage(),
        ThirdListPage(),
      ],
    );
  }
}
