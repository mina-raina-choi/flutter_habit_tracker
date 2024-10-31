import 'package:flutter/material.dart';

class HabitTitle extends StatelessWidget {
  final String habitName;
  final bool habitCompleted;
  void Function(bool?) onChanged;

  HabitTitle({
    super.key,
    required this.habitName,
    required this.habitCompleted,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.grey.shade100,
        ),
        child: Row(
          children: [
            Checkbox(value: habitCompleted, onChanged: onChanged),
            Text(habitName),
          ],
        ),
      ),
    );
  }
}
