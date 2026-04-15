import 'package:demo_test/card3.dart';
import 'package:demo_test/card4.dart';
import 'package:demo_test/card5.dart';
import 'package:demo_test/chart1.dart';
import 'package:demo_test/chart2.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stock UI',
     
      home:  MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

int chosenIndex = 0;


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title:  Column(
          children: [
            Text('Markets Open', style: TextStyle(fontSize: height * 0.015,fontFamily: 'DM Sans', fontWeight: FontWeight.normal,)),
            SizedBox(height: height * 0.005),
            Image(
              image: AssetImage('asset/Market.png'),
              height: height * 0.02,
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          ElevatedButton(
            onPressed: () {},
            child: Icon(Icons.bookmark_border)),
            SizedBox(width: width * 0.02),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Stack(
                alignment: Alignment.topCenter,
                 children: [
                  
                   Column(
                     children: [
                      SizedBox(height: height * 0.05),
                       Container(
                        padding: EdgeInsets.all(height * 0.02),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white,
                          border: Border.all(color: Colors.green.withOpacity(0.2),width: 2),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.green.withOpacity(0.2),
                              spreadRadius: width * 0.02,
                              blurRadius: width * 0.04,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            StockChart(
                              key: ValueKey(chosenIndex),
                              chosenIndex: chosenIndex,),
                            SizedBox(
                              width: width*0.9,
                              height: height * 0.05,
                              child: ListView(
                              scrollDirection: Axis.horizontal,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      setState(() {
                                        chosenIndex = 0;
                                      });
                                    },
                                    child: Column(
                                      children: [
                                      chosenIndex == 0 ? Container(
                                    height: 2,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                  ):Container(),
                                        Text("1D", style: TextStyle(fontSize: height * 0.02, fontWeight: chosenIndex == 0 ? FontWeight.bold : FontWeight.normal,
                                         fontFamily: 'DM Sans',color: Colors.black
                                         
                                        ),),
                                      ],
                                    ),
                                  ),
                                   TextButton(
                                    onPressed: () {
                                      setState(() {
                                        chosenIndex = 1;
                                      });
                                    },
                                    child: Column(
                                      children: [
                                      chosenIndex == 1 ? Container(
                                    height: 2,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                  ):Container(),
                                        Text("1W", style: TextStyle(fontSize: height * 0.02, fontWeight:chosenIndex == 1 ? FontWeight.bold : FontWeight.normal,
                                         fontFamily: 'DM Sans',color: Colors.black
                                         
                                        ),),
                                      ],
                                    ),
                                  ),
                                   TextButton(
                                    onPressed: () {
                                      setState(() {
                                        chosenIndex = 2;
                                      });
                                    },
                                    child: Column(
                                      children: [
                                      chosenIndex == 2 ? Container(
                                    height: 2,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                  ):Container(),
                                        Text("1M", style: TextStyle(fontSize: height * 0.02, fontWeight: chosenIndex == 2 ? FontWeight.bold : FontWeight.normal,
                                         fontFamily: 'DM Sans',color: Colors.black
                                         
                                        ),),
                                      ],
                                    ),
                                  ),
                                   TextButton(
                                    onPressed: () {
                                      setState(() {
                                        chosenIndex = 3;
                                      });
                                    },
                                    child: Column(
                                      children: [
                                      chosenIndex == 3 ? Container(
                                    height: 2,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                  ):Container(),
                                        Text("1Y", style: TextStyle(fontSize: height * 0.02, fontWeight: chosenIndex == 3 ? FontWeight.bold : FontWeight.normal,
                                         fontFamily: 'DM Sans',color: Colors.black
                                         
                                        ),),
                                      ],
                                    ),
                                  ),
                                   TextButton(
                                    onPressed: () {
                                      setState(() {
                                        chosenIndex = 4;
                                      });
                                    },
                                    child: Column(
                                      children: [
                                      chosenIndex == 4 ? Container(
                                    height: 2,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                  ):Container(),
                                        Text("3Y", style: TextStyle(fontSize: height * 0.02, fontWeight: chosenIndex == 4 ? FontWeight.bold : FontWeight.normal,
                                         fontFamily: 'DM Sans',color: Colors.black
                                         
                                        ),),
                                      ],
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      setState(() {
                                        chosenIndex = 5;
                                      });
                                    },
                                    child: Column(
                                      children: [
                                      chosenIndex == 5 ? Container(
                                    height: 2,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                  ):Container(),
                                        Text("ALL", style: TextStyle(fontSize: height * 0.02, fontWeight: chosenIndex == 5 ? FontWeight.bold : FontWeight.normal,
                                         fontFamily: 'DM Sans',color: Colors.black
                                         
                                        ),),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )),
                     ],
                   ),
                    Column(
                      children: [
                        Container(
                          height: height * 0.1,
                          width: height * 0.1,
                          padding: EdgeInsets.all(height * 0.01),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.transparent,
                            border: Border.all(color: Colors.green.withOpacity(0.2)),
                           
                          ),
                          child: Container(
                            
                            decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(20),
                             color: Colors.black
                            ),
                            child: Icon(Icons.apple, size: height * 0.06, color: Colors.white)),
                        ),
                        Text("Apple Inc.", style: TextStyle(fontSize: height * 0.02, fontWeight: FontWeight.bold, fontFamily: 'DM Sans'),),
                        
                      ],
                    ),
                 ],
               ),
SizedBox(height: height * 0.02,),
SizedBox(
  width: width*0.8,
  child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF295139),
                    Color(0xFF437A61),
                    Color(0xFF5B9A74)
                  ],
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Icons.auto_awesome_outlined, // closest to sparkle icon
                size: 18,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 8),
            const Text(
              "Insights",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFF1F4D3A),
              ),
            ),
          ],
        ),
  
        Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Icon(
            Icons.fullscreen,
            size: 20,
            color: Colors.black87,
          ),
        ),
      ],
  ),
),
SizedBox(height: height * 0.01,),
Stack(
  children: [
  Transform.rotate(
    origin: Offset(-height*0.1, 0),
    alignment: Alignment.bottomCenter,
  angle: 3 * 3.1416 / 180, // ✅ 15 degrees
  child: Container(
    
    width: width*0.9,
      height: height * 0.35,
       decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFF1F1F1F).withOpacity(0.12),
                                  Color(0x1F1F1F05).withOpacity(0.02),
                                ],
                              ),                              border: Border.all(color: Colors.black.withOpacity(0.2),width:0.2),
                            
                            ),
  ),
),
Transform.rotate(
    origin: Offset(height*0.1, 0),
    alignment: Alignment.bottomCenter,
  angle: -3 * 3.1416 / 180, // ✅ 15 degrees
  child: Container(
    
    width: width*0.9,
      height: height * 0.35,
       decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFF1F1F1F).withOpacity(0.12),
                                  Color(0x1F1F1F05).withOpacity(0.02),
                                ],
                              ),
                              border: Border.all(color: Colors.black.withOpacity(0.2),width: 0.2),
                              
                            
                            ),
  ),
),
    Container(
      width: width*0.9,
      height: height * 0.35,
       padding: EdgeInsets.all(height * 0.02),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.white,
                              border: Border.all(color: Colors.green.withOpacity(0.2),width: 2),
                            
                            ),
      child: InsightsCard()),
  ],
),
autoInvestCard(context),
SizedBox(height: height * 0.02,),
 SizedBox(
  width: width*0.8,
   child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xFF1F1F1F),
              Color(0xFF7A7A7A),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Icon(
            Icons.list_alt, // closest to your icon
            size: 18,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 8),
        const Text(
          "Similar To This",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
   
Spacer(),   
     InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(6),
            child: const Icon(
              Icons.fullscreen,
              size: 20,
              color: Colors.black87,
            ),
          ),
        ),
      ],
    ),
 ),
 SizedBox(height: height * 0.01,),
Stack(
  children: [
  Transform.rotate(
    origin: Offset(-height*0.1, 0),
    alignment: Alignment.bottomCenter,
  angle: 3 * 3.1416 / 180, // ✅ 15 degrees
  child: Container(
    
    width: width*0.9,
      height: height * 0.35,
       decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFF1F1F1F).withOpacity(0.12),
                                  Color(0x1F1F1F05).withOpacity(0.02),
                                ],
                              ),                              border: Border.all(color: Colors.black.withOpacity(0.2),width:0.2),
                            
                            ),
  ),
),
Transform.rotate(
    origin: Offset(height*0.1, 0),
    alignment: Alignment.bottomCenter,
  angle: -3 * 3.1416 / 180, // ✅ 15 degrees
  child: Container(
    
    width: width*0.9,
      height: height * 0.35,
       decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFF1F1F1F).withOpacity(0.12),
                                  Color(0x1F1F1F05).withOpacity(0.02),
                                ],
                              ),
                              border: Border.all(color: Colors.black.withOpacity(0.2),width: 0.2),
                              
                            
                            ),
  ),
),
    Container(
      width: width*0.9,
      height: height * 0.35,
       padding: EdgeInsets.all(height * 0.02),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.white,
                              border: Border.all(color: Colors.green.withOpacity(0.2),width: 2),
                            
                            ),
      child: ListView(
  children: [
    similarStockItem("Microsoft Corp.", "2.5T", 305.22, 1.45, 0.48),
    similarStockItem("Google LLC", "1.8T", 2750.00, 25.00, 0.92),
    similarStockItem("Amazon.com Inc.", "1.5T", 3300.00, 50.00, 1.54),
    similarStockItem("Tesla, Inc.", "780B", 245.67, 5.23, 2.18),
    similarStockItem("NVIDIA Corporation", "2.1T", 450.00, 15.00, 3.45),
    similarStockItem("Meta Platforms, Inc.", "850B", 320.00, 10.00, 3.23),
  ],
)),
  ],
),
SizedBox(height: height * 0.02,),


investBar(context),
SizedBox(height: height * 0.02,),
            ],
          ),
        ),
      ),
    );
  }
}

