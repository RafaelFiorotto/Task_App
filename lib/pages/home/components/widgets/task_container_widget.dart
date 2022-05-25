import 'package:flutter/material.dart';

class TaskContainerWidget extends StatelessWidget {
  const TaskContainerWidget(
      {Key? key,
      required this.containerChecked,
      required this.title,
      required this.color})
      : super(key: key);

  final bool containerChecked;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.symmetric(vertical: 4),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              title,
              style: TextStyle(
                decoration:
                    containerChecked ? TextDecoration.lineThrough : null,
              ),
            ),
          ),
          Icon(
            containerChecked ? Icons.check_circle : Icons.circle_outlined,
          )
        ],
      ),
    );
  }
}
