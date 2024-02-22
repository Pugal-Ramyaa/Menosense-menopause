import 'dart:async';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:menopausal_app/constants.dart';

class Months extends StatefulWidget {
  Months({super.key});
  final Color barBackgroundColor = kPrimaryLightColor.withOpacity(0.3);
  final Color barColor =kPrimaryLightColor;
  final Color touchedBarColor = kPrimaryColor;
  final int numberOfWeeks=5;
  @override
  State<StatefulWidget> createState() => BarChartSample1State();
}

class BarChartSample1State extends State<Months> {
  final Duration animDuration = const Duration(milliseconds: 250);

  int touchedIndex = -1;

  bool isPlaying = false;
  String getDateRange() {
    return "2023"; // Replace with your logic to get the date range
  }
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const SizedBox(
                  height: 4,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Container(
                        height: 400,
                        padding: const EdgeInsets.symmetric(horizontal: 46),
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 4,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  icon: Icon(Icons.arrow_back),
                                  onPressed: () {
                                    // Handle previous arrow button press
                                  },
                                ),
                                Text(
                                  getDateRange(),
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                IconButton(
                                  icon: Icon(Icons.arrow_forward),
                                  onPressed: () {
                                    // Handle next arrow button press
                                  },
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Expanded(
                              child: BarChart(
                                isPlaying ? randomData() : mainBarData(),
                                swapAnimationDuration: animDuration,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  BarChartGroupData makeGroupData(
    int x,
    double y, {
    bool isTouched = false,
    Color? barColor,
    double width = 8,
    List<int> showTooltips = const [],
  }) {
    barColor ??= widget.barColor;
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: isTouched ? y + 1 : y,
          color: isTouched ? widget.touchedBarColor : barColor,
          width: width,
          
          backDrawRodData: BackgroundBarChartRodData(
            show: true,
            toY: 20,
            color: widget.barBackgroundColor,
          ),
        ),
      ],
      showingTooltipIndicators: showTooltips,
    );
  }

  List<BarChartGroupData> showingGroups() => List.generate(12, (i) {
        switch (i) {
          case 0:
            return makeGroupData(0, 5, isTouched: i == touchedIndex);
          case 1:
            return makeGroupData(1, 6.5, isTouched: i == touchedIndex);
          case 2:
            return makeGroupData(2, 5, isTouched: i == touchedIndex);
          case 3:
            return makeGroupData(3, 7.5, isTouched: i == touchedIndex);
          case 4:
            return makeGroupData(4, 9, isTouched: i == touchedIndex);
          case 5:
            return makeGroupData(5, 5, isTouched: i == touchedIndex);
          case 6:
            return makeGroupData(6, 6.5, isTouched: i == touchedIndex);
          case 7:
            return makeGroupData(7, 5, isTouched: i == touchedIndex);
          case 8:
            return makeGroupData(8, 7.5, isTouched: i == touchedIndex);
          case 9:
            return makeGroupData(9, 9, isTouched: i == touchedIndex);
          case 10:
            return makeGroupData(10, 5, isTouched: i == touchedIndex);
          case 11:
            return makeGroupData(11, 7.5, isTouched: i == touchedIndex);
          case 12:
            return makeGroupData(12, 9, isTouched: i == touchedIndex);
          default:
            return throw Error();
        }
      });

  BarChartData mainBarData() {
    return BarChartData(
      barTouchData: BarTouchData(
        touchTooltipData: BarTouchTooltipData(
          tooltipBgColor: Colors.blueGrey,
          tooltipHorizontalAlignment: FLHorizontalAlignment.right,
          tooltipMargin: -10,
          getTooltipItem: (group, groupIndex, rod, rodIndex) {
            String weekDay;
            switch (group.x) {
              case 0:
                weekDay = 'JAN';
                break;
              case 1:
                weekDay = 'FEB';
                break;
              case 2:
                weekDay = 'MAR';
                break;
              case 3:
                weekDay = 'APR';
                break;
              case 4:
                weekDay = 'MAY';
                break;
              case 5:
                weekDay = 'JUN';
                break;
              case 6:
                weekDay = 'JUL';
                break;
              case 7:
                weekDay = 'AUG';
                break;
              case 8:
                weekDay = 'SEP';
                break;
              case 9:
                weekDay = 'OCT';
                break;
              case 10:
                weekDay = 'NOV';
                break;
              case 11:
                weekDay = 'DEC';
                break;
              default:
                throw Error();
            }
            return BarTooltipItem(
              '$weekDay\n',
              const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: (rod.toY - 1).toString(),
                  style: TextStyle(
                    color: widget.touchedBarColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            );
          },
        ),
        touchCallback: (FlTouchEvent event, barTouchResponse) {
          setState(() {
            if (!event.isInterestedForInteractions ||
                barTouchResponse == null ||
                barTouchResponse.spot == null) {
              touchedIndex = -1;
              return;
            }
            touchedIndex = barTouchResponse.spot!.touchedBarGroupIndex;
          });
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: getTitles,
            reservedSize: 38,
          ),
        ),
        leftTitles: const AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: showingGroups(),
      gridData: const FlGridData(show: false),
    );
  }

  Widget getTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: kPrimaryColor,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    Widget text;
    switch (value.toInt()) {
      // case 0:
      //   text = const Text('', style: style);
      //   break;
      // case 1:
      //   text = const Text('', style: style);
      //   break;
      // case 2:
      //   text = const Text('M', style: style);
      //   break;
      // case 3:
      //   text = const Text('A', style: style);
      //   break;
      // case 4:
      //   text = const Text('M', style: style);
      //   break;
      // case 5:
      //   text = const Text('J', style: style);
      //   break;
      // case 6:
      //   text = const Text('J', style: style);
      //   break;
      // case 7:
      //   text = const Text('A', style: style);
      //   break;
      // case 8:
      //   text = const Text('S', style: style);
      //   break;
      // case 9:
      //   text = const Text('O', style: style);
      //   break;
      // case 10:
      //   text = const Text('N', style: style);
      //   break;
      // case 11:
      //   text = const Text('D', style: style);
      //   break;
      default:
        text = const Text('', style: style);
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 16,
      child: text,
    );
  }

  BarChartData randomData() {
    return BarChartData(
      barTouchData: BarTouchData(
        enabled: false,
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: getTitles,
            reservedSize: 38,
          ),
        ),
        leftTitles: const AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      
      gridData: const FlGridData(show: false),
    );
  }

  
}