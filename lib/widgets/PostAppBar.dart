import 'package:flutter/material.dart';


class PostAppBar extends StatelessWidget {
  const PostAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              padding:const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow:const [
                  BoxShadow(color: Colors.black26,blurRadius: 6.0)
                ]
              ),
              child: const Icon(Icons.arrow_back,size: 26,),
            ),
          ),
           InkWell(
            onTap: () {
              
            },
            child: Container(
              padding:const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow:const [
                  BoxShadow(color: Colors.black26,blurRadius: 6.0)
                ]
              ),
              child: const Icon(Icons.favorite,size: 26,color: Colors.redAccent,),
            ),
          )
        ],
      ),
    );
  }
}
