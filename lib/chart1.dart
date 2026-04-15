import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class StockChart extends StatefulWidget {
  final int chosenIndex;

  const StockChart({super.key, required this.chosenIndex});

  @override
  State<StockChart> createState() => _StockChartState();
}

class _StockChartState extends State<StockChart> {
  int touchedIndex = 5;

   List<FlSpot>  data = [
     FlSpot(0, 100),
  FlSpot(1, 100.5),
  FlSpot(2, 100.2),
  FlSpot(3, 101.0),
  FlSpot(4, 100.7),
  FlSpot(5, 101.3),
  FlSpot(6, 101.0),
  FlSpot(7, 101.6),
  FlSpot(8, 101.2),
  FlSpot(9, 101.8),
  FlSpot(10, 101.5),
   ];

  double minX = 0;
  double maxX = 10;
  double minY = 0;
  double maxY = 200;

 List<FlSpot> data_1D = [
  FlSpot(0, 100),
  FlSpot(1, 100.5),
  FlSpot(2, 100.2),
  FlSpot(3, 101.0),
  FlSpot(4, 100.7),
  FlSpot(5, 101.3),
  FlSpot(6, 101.0),
  FlSpot(7, 101.6),
  FlSpot(8, 101.2),
  FlSpot(9, 101.8),
  FlSpot(10, 101.5),
];
 List<FlSpot> data_1W = [
  FlSpot(0, 98),
  FlSpot(1, 100),
  FlSpot(2, 97),
  FlSpot(3, 102),
  FlSpot(4, 101),
  FlSpot(5, 103),
  FlSpot(6, 102),
  FlSpot(7, 104),
  FlSpot(8, 103),
  FlSpot(9, 105),
  FlSpot(10, 104),
];

 List<FlSpot> data_1M = [
  FlSpot(0, 90),
  FlSpot(1, 92),
  FlSpot(2, 88),
  FlSpot(3, 95),
  FlSpot(4, 97),
  FlSpot(5, 96),
  FlSpot(6, 99),
  FlSpot(7, 101),
  FlSpot(8, 100),
  FlSpot(9, 103),
  FlSpot(10, 105),
];

 List<FlSpot> data_1Y = [
  FlSpot(0, 70),
  FlSpot(1, 75),
  FlSpot(2, 72),
  FlSpot(3, 80),
  FlSpot(4, 85),
  FlSpot(5, 83),
  FlSpot(6, 90),
  FlSpot(7, 95),
  FlSpot(8, 92),
  FlSpot(9, 100),
  FlSpot(10, 110),
];

 List<FlSpot> data_3Y = [
  FlSpot(0, 50),
  FlSpot(1, 60),
  FlSpot(2, 55),
  FlSpot(3, 70),
  FlSpot(4, 80),
  FlSpot(5, 75),
  FlSpot(6, 90),
  FlSpot(7, 105),
  FlSpot(8, 100),
  FlSpot(9, 120),
  FlSpot(10, 140),
];

 List<FlSpot> data_ALL = [
  FlSpot(0, 20),
  FlSpot(1, 30),
  FlSpot(2, 28),
  FlSpot(3, 45),
  FlSpot(4, 60),
  FlSpot(5, 55),
  FlSpot(6, 80),
  FlSpot(7, 110),
  FlSpot(8, 100),
  FlSpot(9, 150),
  FlSpot(10, 160),
];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      switch (widget.chosenIndex) {
        case 0:
          data = data_1D;
          minY = 90;
          maxY = 150;
          break;
        case 1:
          data = data_1W;
            minY = 90;
          maxY = 150;
          break;
        case 2:
          data = data_1M;
          minY = 90;
          maxY = 150;

          break;
        case 3:
          data = data_1Y;
          minY = 50;
          maxY = 150;
          break;
        case 4:
          data = data_3Y;
          minY = 50;
          maxY = 200;
          break;
        case 5:
          data = data_ALL;
          minY = 20;
          maxY = 200;
          break;
        default:
          data = data_1D;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return AspectRatio(
      aspectRatio: 0.8,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final chartWidth = constraints.maxWidth;
          final chartHeight = constraints.maxHeight;

          final spot = data[touchedIndex];

          /// 🔥 REAL POSITION CALCULATION (Responsive)
          final dx = ((spot.x - minX) / (maxX - minX)) * chartWidth;
          final dy =
              chartHeight - ((spot.y - minY) / (maxY - minY)) * chartHeight;

          return Stack(
            children: [
              /// DOTTED BG
              CustomPaint(
                size: Size.infinite,
                painter: DottedPainter(),
              ),

              /// CHART
              LineChart(
                LineChartData(
                  minX: minX,
                  maxX: maxX,
                  minY: minY,
                  maxY: maxY,

                  gridData: FlGridData(show: false),
                  titlesData: FlTitlesData(show: false),
                  borderData: FlBorderData(show: false),

                  lineTouchData: LineTouchData(
                    
                    touchTooltipData :
                  
                    LineTouchTooltipData(
                      maxContentWidth: 0,
                      tooltipMargin: 0,
                      tooltipPadding: EdgeInsets.zero,
                      tooltipBorder: BorderSide(color: Colors.grey, width: 0.5),
                      getTooltipColor :(touchedSpot) => Colors.green.shade700.withOpacity(0.1),
                      getTooltipItems: (touchedSpots) => touchedSpots.map((touchedSpot) {
                        return 
                        
                        LineTooltipItem(
                          '',
                          TextStyle(color: Colors.green.shade700, fontWeight: FontWeight.bold),
                        );
                      }).toList(),
                    ),
                    handleBuiltInTouches: true,
                    touchCallback: (event, response) {
                      if (response != null &&
                          response.lineBarSpots != null &&
                          response.lineBarSpots!.isNotEmpty) {
                        setState(() {
                          touchedIndex =
                              response.lineBarSpots!.first.spotIndex;
                        });
                      }
                    },
                  ),

                  extraLinesData: ExtraLinesData(
                    verticalLines: [
                      VerticalLine(
                        x: spot.x,
                        color: Colors.green,
                        strokeWidth: 2,
                        dashArray: [6, 6],
                      ),
                    ],
                  ),

                  lineBarsData: [
                    LineChartBarData(
                      spots: data,
                      isCurved: true,
                      barWidth: 3,
                      color:  Colors.green.shade700,
                      dotData: FlDotData(show: false),
                     
                    ),
                  ],
                ),
              ),
              
              Column(
                children: [
                  SizedBox(height: height * 0.08),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        ShaderMask(
  shaderCallback: (bounds) => LinearGradient(
    colors: [
      Color(0xFF2E7D5B),
      Color(0xFF1F4D3A),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ).createShader(bounds),
  child: Text(
    "\$",
    style: TextStyle(
      fontSize: height * 0.05,
      fontWeight: FontWeight.w800,
      color: Colors.white, // required for shader
      letterSpacing: -1.5,
    ),
  ),
),
ShaderMask(
  shaderCallback: (bounds) => LinearGradient(
    colors: [
      Color(0xFF2E7D5B),
      Color(0xFF1F4D3A),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ).createShader(bounds),
  child: Text(
    data[touchedIndex].y.toStringAsFixed(2),
    style: TextStyle(
      fontSize: height * 0.07,
      fontWeight: FontWeight.w800,
      color: Colors.white, // required for shader
      letterSpacing: -1.5,
    ),
  ),
)
                    
                    ],
                  ),
                ],
              ),
Positioned(
  left: (dx - 60).clamp(0, chartWidth - 120),
  top: (dy - 70).clamp(0, chartHeight - 60),
  child: _buildCustomTooltip(spot),
),
              Positioned(
                left: dx - 9,
                top: dy - 9,
                child: _buildGlowDot(),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildGlowDot() {
    return Container(
      width: 18,
      height: 18,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.green,
        boxShadow: [
          BoxShadow(
            color: Colors.green.withOpacity(0.5),
            blurRadius: 14,
            spreadRadius: 5,
          ),
        ],
      ),
    );
  }


Widget _buildCustomTooltip(FlSpot spot) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    decoration: BoxDecoration(
      color: const Color(0xFFE6F4EA), // light green bg
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.05),
          blurRadius: 10,
          offset: const Offset(0, 4),
        ),
      ],
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        /// ICON CONTAINER
      data[touchedIndex].y - data[touchedIndex - 1].y>0?  Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.green.shade700,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Icon(
            Icons.keyboard_double_arrow_up,
            color: Colors.white,
            size: 16,
          ),
        ) : Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.red.shade700,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Icon(
            Icons.keyboard_double_arrow_down,
            color: Colors.white,
            size: 16,
          ),

        ),

        const SizedBox(width: 8),

        /// TEXT
        Text(
          "\$${(data[touchedIndex].y - data[touchedIndex - 1].y).toStringAsFixed(2)}",
          style: TextStyle(
            color: Colors.green.shade900,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );
}

}


class DottedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.grey.withOpacity(0.5);

    const spacing = 14;

    for (double x = 0; x < size.width; x += spacing) {
      for (double y = 0; y < size.height; y += spacing) {
        canvas.drawCircle(Offset(x, y), 1, paint);
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}


