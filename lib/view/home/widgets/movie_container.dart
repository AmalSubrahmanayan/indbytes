import 'package:flutter/material.dart';
import 'package:indbytes/constants/colors/app_colors.dart';

class MovieContainer extends StatelessWidget {
  const MovieContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            SizedBox(
              height: 240,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 210,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://sm.ign.com/ign_in/cover/a/a-man-call/a-man-called-otto_cru3.jpg'),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
            const Positioned(
                top: 190,
                child: CircleAvatar(
                    backgroundColor: AppColors.greenColor,
                    radius: 24,
                    child: CircleAvatar(
                      backgroundColor: AppColors.blackColor,
                      child: Text('78'),
                    ))),
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'Feb10, 2023',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }
}
