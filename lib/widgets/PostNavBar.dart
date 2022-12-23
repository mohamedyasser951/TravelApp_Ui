import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PostNavBar extends StatelessWidget {
  const PostNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      padding:const EdgeInsets.only(top: 20.0),
      decoration: const BoxDecoration(
          color: Color(0xFFEDF2F6),
          borderRadius:  BorderRadius.only(
              topRight: Radius.circular(40.0), topLeft: Radius.circular(40.0))),
              child: ListView(
                children: [
                  
                ],
              ),
    );
  }
}
