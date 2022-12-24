
import 'package:flutter/material.dart';


class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                    )
                  ]),
              child: const Icon(
                Icons.sort_rounded,
                size: 28.0,
              ),
            ),
          ),
          Row(
            children:const [
              Icon(
                Icons.location_on,
                color: Color(0xFFF65959),
              ),
              Text(
                "New York, USA",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        
          InkWell(
            onTap: (){},
            child: Container(
              padding:const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: const [
                  BoxShadow(
                       color: Colors.black26,
                       blurRadius: 6,
                  )
                ]
              ),
              child: const Icon(Icons.search,size: 28.0,),
            ),
          ),
        
        ],
      ),
    );
  }
}
