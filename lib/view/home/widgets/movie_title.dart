import 'package:flutter/material.dart';
import 'package:indbytes/constants/colors/app_colors.dart';

class MovieTile extends StatelessWidget {
  const MovieTile({super.key, required this.txt});
  final String txt;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            txt,
            style: const TextStyle(
                color: AppColors.redColor,
                fontWeight: FontWeight.bold,
                fontSize: 17),
          ),
          const Spacer(),
          const Text('seeall>')
        ],
      ),
    );
  }
}
