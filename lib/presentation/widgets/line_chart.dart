import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:stoy/domain/entities/body/body.dart';

class BodyWeightChart extends StatelessWidget {
  final List<Body> bodyData;

  const BodyWeightChart({Key? key, required this.bodyData}) : super(key: key);

  final int scale = 1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 300.h, width: 300.w, child: LineChart(mainData()));
  }

  List<FlSpot> list() {
    return bodyData.map((body) {
      DateTime date = DateTime.parse(body.ymd);
      // X軸を日付（年と月と日の合計）に設定し、Y軸を体重に設定
      return FlSpot(
          date.millisecondsSinceEpoch.toDouble() / scale, body.weight);
    }).toList();
  }

  LineChartBarData lineChartBarData() {
    List<FlSpot> spots = bodyData.map((body) {
      DateTime date = DateTime.parse(body.ymd);
      // X軸を日付（年と月と日の合計）に設定し、Y軸を体重に設定
      return FlSpot(
          date.millisecondsSinceEpoch.toDouble() / 1000000, body.weight);
    }).toList();

    return LineChartBarData(
      spots: spots,
      isCurved: true,
      color: Colors.blue,
      barWidth: 2,
      isStrokeCapRound: true,
      dotData: const FlDotData(show: false),
      belowBarData: BarAreaData(show: false),
    );
  }

  LineChartData mainData() {
    return LineChartData(
      // タッチ操作時の設定
      lineTouchData: const LineTouchData(
        handleBuiltInTouches: true, // タッチ時のアクションの有無
        getTouchedSpotIndicator: defaultTouchedIndicators, // インジケーターの設定
        touchTooltipData: LineTouchTooltipData(
          // ツールチップの設定
          getTooltipItems: defaultLineTooltipItem, // 表示文字設定
          tooltipBgColor: Colors.white, // 背景の色
          tooltipRoundedRadius: 2.0, // 角丸
        ),
      ),

      // 背景のグリッド線の設定
      gridData: FlGridData(
        show: true,
        // 背景のグリッド線の有無
        drawVerticalLine: true,
        // 水平方向のグリッド線の有無
        horizontalInterval: 5.0,
        // // 背景グリッドの横線間隔
        verticalInterval: 86400000.0 * 3,
        // 背景グリッドの縦線間隔
        getDrawingHorizontalLine: (value) {
          // 背景グリッドの横線設定
          return const FlLine(
            color: Color(0xff37434d), // 背景横線の色
            strokeWidth: 0.1, // 背景横線の太さ
          );
        },
        getDrawingVerticalLine: (value) {
          // 背景グリッドの縦線設定
          return const FlLine(
            color: Color(0xff37434d), // 背景縦線の色
            strokeWidth: 0.1, // 背景縦線の太さ
          );
        },
      ),

      // グラフのタイトル設定
      titlesData: FlTitlesData(
          show: true,
          // タイトルの有無
          bottomTitles: AxisTitles(
            // 下側に表示するタイトル設定
            axisNameWidget: const Text(
              "【曜日】", // タイトル名
              style: TextStyle(
                color: Color(0xff68737d),
              ),
            ),
            axisNameSize: 22.0, // タイトルの表示エリアの幅
            sideTitles: SideTitles(
              // サイドタイトル設定
              getTitlesWidget: (double value, TitleMeta meta) {
                final date = DateTime.fromMillisecondsSinceEpoch(value.toInt());
                final formattedDate = DateFormat('MM/dd').format(date);

                return SideTitleWidget(
                  axisSide: meta.axisSide,
                  space: 8.0, // タイトルと軸の間のスペース
                  child: Text(formattedDate,
                      style: TextStyle(color: Colors.black, fontSize: 10)),
                );
              },
              showTitles: true, // サイドタイトルの有無
              interval: 86400000.0 * 3, // サイドタイトルの表示間隔
              reservedSize: 40.0, // サイドタイトルの表示エリアの幅// サイドタイトルの表示内容
            ),
          ),
          rightTitles: AxisTitles(),
          // 上記と同じため割愛
          topTitles: AxisTitles(),
          leftTitles: AxisTitles()),

      // グラフの外枠線
      borderData: FlBorderData(
        show: true, // 外枠線の有無
        border: Border.all(
          // 外枠線の色
          color: const Color(0xff37434d),
        ),
      ),

      // グラフのx軸y軸のの表示数
      baselineX: list().first.x,
      baselineY: 30.0,
      minX: list().first.x,
      maxX: list().last.x,
      minY: 30.0,
      maxY: 100.0,

      // チャート線の設定
      lineBarsData: [
        LineChartBarData(
          spots: list(),
          isCurved: false,
          // チャート線を曲線にするか折れ線にするか
          barWidth: 2.0,
          // チャート線幅
          isStrokeCapRound: false,
          // チャート線の開始と終了がQubicかRoundか（？）
          dotData: FlDotData(
            show: true, // 座標のドット表示の有無
            getDotPainter: (spot, percent, barData, index) =>
                FlDotCirclePainter(
              // ドットの詳細設定
              radius: 2.0,
              color: Colors.blue,
              strokeWidth: 2.0,
              strokeColor: Colors.blue,
            ),
          ),
          belowBarData: BarAreaData(
            // チャート線下部に色を付ける場合の設定
            show: false, // チャート線下部の表示の有無
          ),
        ),
      ],
    );
  }
}
