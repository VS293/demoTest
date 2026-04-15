import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class InsightsCard extends StatelessWidget {
  const InsightsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F6F8),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// HEADER
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _titleValue("Annual Returns", "9.20%"),
              _titleValue("Avg. Vol.", "62.06M"),
            ],
          ),

          const SizedBox(height: 20),

          /// BAR CHART
          SizedBox(
            height: 80,
            child: ShaderMask(
              shaderCallback: (rect) {
                return const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black, Colors.transparent],
                ).createShader(rect);
              },
              blendMode: BlendMode.dstIn,
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceBetween,
                  titlesData: FlTitlesData(show: false),
                  gridData: FlGridData(show: false),
                  borderData: FlBorderData(show: false),
                  barGroups: _barData(),
                ),
              ),
            ),
          ),

          const SizedBox(height: 20),

          /// FOOTER STATS
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _BottomStat(title: "Market Cap", value: "\$3.1T"),
              _BottomStat(title: "P/E Ratio", value: "26.4"),
              _BottomStat(title: "Div. Yield", value: "0.52%"),
            ],
          ),
        ],
      ),
    );
  }

  /// 🔥 BAR DATA
  List<BarChartGroupData> _barData() {
    final values = [
      6.5, 4, 3, 5, 4.2, 7, 5.5, 3.8, 3.2, 2.5,
      4.5, 8, 7, 6.5, 5.5, 3.5, 4.8, 7.2, 6.0
    ];

    return List.generate(values.length, (i) {
      return BarChartGroupData(
        x: i,
        barRods: [
          BarChartRodData(
            toY: values[i].toDouble(),
            width: 3,
            borderRadius: BorderRadius.circular(4),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.green.shade700,
                Colors.green.withOpacity(0.1),
              ],
            ),
          ),
        ],
      );
    });
  }

  /// TOP TEXT
  Widget _titleValue(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(color: Colors.black54),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1F4D3A),
          ),
        ),
      ],
    );
  }
}

/// BOTTOM STATS
class _BottomStat extends StatelessWidget {
  final String title;
  final String value;

  const _BottomStat({
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(color: Colors.black54),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}