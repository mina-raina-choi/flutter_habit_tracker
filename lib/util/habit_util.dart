// given a habit list of completion days
// is the habitt completed today
import 'package:habit_tracker/models/habit.dart';

bool isHabitCompletedToday(List<DateTime> completeDays) {
  final today = DateTime.now();
  // completeDays.contains(today);
  return completeDays.any((date) =>
      date.year == today.year &&
      date.month == today.month &&
      date.day == today.day);
}

// prepare heat map dataset
Map<DateTime, int> prepareHeatMapDatasets(List<Habit> habits) {
  Map<DateTime, int> dataset = {};

  for (var habit in habits) {
    for (var date in habit.completedDays) {
      final normalizedDate = DateTime(date.year, date.month, date.day);

      if (dataset.containsKey(normalizedDate)) {
        dataset[normalizedDate] = dataset[normalizedDate]! + 1;
      } else {
        dataset[normalizedDate] = 1;
      }
    }
  }
  return dataset;
}
