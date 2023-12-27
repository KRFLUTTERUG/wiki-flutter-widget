import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyFlChart extends StatelessWidget {
  const MyFlChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: PieChart(PieChartData(sections: [
                PieChartSectionData(
                    value: 30.3,
                    title: 'Home',
                    showTitle: true,
                    radius: 70,
                    color: Colors.purple),
                PieChartSectionData(
                    value: 10.2,
                    title: 'Bus',
                    showTitle: true,
                    radius: 70,
                    color: Colors.blue),
                PieChartSectionData(
                    value: 80.5,
                    title: 'Airport',
                    showTitle: true,
                    radius: 70,
                    color: Colors.yellow),
                PieChartSectionData(
                    value: 90.0,
                    title: 'Cafe',
                    showTitle: true,
                    radius: 70,
                    color: Colors.green),
              ])),
            ),
            SizedBox(
              height: 100,
              width: 380,
              child: LineChart(LineChartData(
                  minY: 60,
                  maxY: 80,
                  lineBarsData: [
                    LineChartBarData(
                      spots: [
                        const FlSpot(0, 65), // 예시 리스트 1: x = 0, y = 65
                        const FlSpot(1, 70), // 예시 리스트 1: x = 1, y = 70
                        const FlSpot(2, 75), // 예시 리스트 1: x = 2, y = 75
                        const FlSpot(3, 79), // 예시 리스트 1: x = 3, y = 79
                      ],
                      color: Colors.blue,
                      barWidth: 6,
                      isCurved: true,
                    ),
                    LineChartBarData(
                      spots: [
                        const FlSpot(0, 75), // 예시 리스트 2: x = 0, y = 75
                        const FlSpot(1, 73), // 예시 리스트 2: x = 1, y = 73
                        const FlSpot(2, 70), // 예시 리스트 2: x = 2, y = 70
                        const FlSpot(3, 68), // 예시 리스트 2: x = 3, y = 68
                      ],
                      color: Colors.green,
                      barWidth: 6,
                      isCurved: true,
                    ),
                    LineChartBarData(
                      spots: [
                        const FlSpot(0, 70), // 예시 리스트 3: x = 0, y = 70
                        const FlSpot(1, 72), // 예시 리스트 3: x = 1, y = 72
                        const FlSpot(2, 74), // 예시 리스트 3: x = 2, y = 74
                        const FlSpot(3, 76), // 예시 리스트 3: x = 3, y = 76
                      ],
                      color: Colors.purple,
                      barWidth: 6,
                      isCurved: true,
                    ),
                  ],
                  titlesData: FlTitlesData(
                      topTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: false)),
                      rightTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: false)),
                      leftTitles: const AxisTitles(
                          axisNameWidget: Text('Temperature (F)'),
                          sideTitles: SideTitles(showTitles: true)),
                      bottomTitles: AxisTitles(
                          axisNameWidget: const Text('Day of the week'),
                          sideTitles: numberBottomTitle())))),
            )
          ],
        ),
      ),
    );
  }

  SideTitles numberBottomTitle() {
    return const SideTitles(
      showTitles: true,
      interval: 1
    );
  }

}
