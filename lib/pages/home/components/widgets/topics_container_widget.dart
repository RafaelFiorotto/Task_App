import 'package:flutter/material.dart';

class TopicContainerWidget extends StatelessWidget {
  const TopicContainerWidget({
    Key? key,
    required this.title,
    required this.pageIndex,
    required this.page,
  }) : super(key: key);

  final String title;
  final int pageIndex;
  final int page;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      height: 26,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: pageIndex == page ? Colors.black : Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              fontSize: 12,
              color: pageIndex == page ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}
