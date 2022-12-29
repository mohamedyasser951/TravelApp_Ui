// ignore_for_file: sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travelapp/widgets/PostAppBar.dart';
import 'package:travelapp/widgets/PostNavBar.dart';

class PostScreen extends StatelessWidget {
  int index;
   PostScreen({super.key,required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
            image: AssetImage("assets/city${index+1}.jpg"),
            fit: BoxFit.cover,
            opacity: 0.7),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const PreferredSize(
            child: PostAppBar(), preferredSize: Size.fromHeight(90.0)),
        bottomNavigationBar: PostNavBar(),
      ),
    );
  }
}
