import 'package:flutter/material.dart';

Widget autoInvestCard(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  final height = MediaQuery.of(context).size.height;

  return Container(
    width: width * 0.9,
    // height: height * 0.5,
    child: Stack(
      children: [
       

        Column(
          children: [
            SizedBox(height: height * 0.09),
            Container(
              padding: EdgeInsets.all(width * 0.05),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xFF6447A8),
              Color(0xFF7863BA),
              Color(0xFFF6F4F9),
            ],
                  ),
                  boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              blurRadius: 20,
              offset: const Offset(0, 10),
            ),
                  ],
                ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height * 0.01),
              
                  Text(
                    "Auto-Invest on\nyour schedule",
                    style: TextStyle(
                      fontSize: width * 0.055,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      height: 1.2,
                    ),
                  ),
              
                  SizedBox(height: height * 0.015),
              
                  Row(
                    children: [
                      Text(
                        "Investing consistently helps\naverage out costs over time.",
                        style: TextStyle(
                          fontSize: width * 0.035,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      ),
                      Spacer(),
                        Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                          Icons.arrow_forward,
                          color: Color(0xFF7863BA),
                                                ),
                        ),
                    ],
                  ),
              
              
               
                ],
              ),
            ),
          ],
        ),

         Positioned(
          right: 0,
          top: 0,
          child:Image.asset("asset/Transfer Initiated.png",height: height * 0.2,),
        ),
      ],
    ),
  );
}


