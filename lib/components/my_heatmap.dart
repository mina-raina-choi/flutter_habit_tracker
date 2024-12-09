import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';

// custom calendar...
class MyHeatmap extends StatelessWidget {
  final Map<DateTime, int> datasets;

  const MyHeatmap({
    super.key,
    required this.datasets,
  });

  void onDateClick(DateTime dateTime) {
    print('$dateTime clicked'); // show detail popup
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      // table calendar 로 커스텀한다면?
      child: HeatMapCalendar(
        // endDate: DateTime.now(),
        initDate: DateTime.now(),
        datasets: datasets, // km, kcal, duration, pace
        colorMode: ColorMode.color,
        defaultColor: Theme.of(context).colorScheme.secondary,
        textColor: Colors.white,
        showColorTip: true,
        colorTipSize: 12,
        colorTipCount: 6,
        colorTipHelper: const [Text("0km"), Text("2km")],
        size: 24,
        fontSize: 12,
        monthFontSize: 18,
        weekFontSize: 12,
        weekTextColor: Theme.of(context).colorScheme.primary,
        borderRadius: 28,
        flexible: true,
        margin: const EdgeInsets.all(4),
        onClick: (dateTime) => onDateClick(dateTime),

        // scrollable: true,
        colorsets: {
          1: Colors.green.shade200,
          2: Colors.green.shade300,
          3: Colors.green.shade400,
          4: Colors.green.shade500,
          5: Colors.green.shade600,
        },
      ),
    );
  }
}
