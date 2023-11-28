
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Graphtile extends StatelessWidget {
  const Graphtile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 80,
      child: SfCartesianChart(
        plotAreaBorderWidth: 0,
        primaryXAxis: CategoryAxis(
          isVisible: false,
          majorGridLines:const MajorGridLines(width: 0),
          majorTickLines:const MajorTickLines(width: 0),
        ),
        primaryYAxis: NumericAxis(
          interval: 200,
          isVisible: false,
          opposedPosition: true,
          majorGridLines: const MajorGridLines(width: 0),
          majorTickLines:const MajorTickLines(width: 0),
        ),
        series: <ChartSeries>[
          LineSeries<SalesData, String>(
            dataSource: <SalesData>[
              SalesData('1', 0),
              SalesData('2', 50),
              SalesData('3', 100),
              SalesData('4', 30),
              SalesData('5', 50),
              SalesData('6', 200),
              SalesData('7', 150),
              SalesData('8', 300),
              SalesData('9', 350),
              SalesData('10', 200),
              SalesData('11', 400),
              SalesData('12', 450),
              SalesData('13', 500),
            ],
            xValueMapper: (SalesData sales, _) => sales.month,
            yValueMapper: (SalesData sales, _) => sales.amount,
          ),
        ],
      ),
    );
  }
}

class SalesData {
  final String month;
  final double amount;

  SalesData(this.month, this.amount);
}
