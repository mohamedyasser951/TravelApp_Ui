import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeNavBar extends StatelessWidget {
  const HomeNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.transparent,
      index: 2,
      items: const[
        Icon(Icons.person_outline,size: 30.0,),
        Icon(Icons.favorite_outline_outlined,size: 30.0,),
        Icon(Icons.home,size: 30.0,color: Colors.redAccent,),
        Icon(Icons.location_on_outlined,size: 30.0,),
        Icon(Icons.list,size: 30.0,),
      ],
    );
  }
}