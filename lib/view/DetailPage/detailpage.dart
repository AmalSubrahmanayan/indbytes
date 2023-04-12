import 'package:flutter/material.dart';
import 'package:indbytes/constants/colors/app_colors.dart';
import 'package:indbytes/view/home/widgets/movie_container.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://is4-ssl.mzstatic.com/image/thumb/Video126/v4/de/dc/65/dedc65e2-cf93-f8ae-d1a0-31727e7a458e/SPE_MAN_CALLED_OTTO_A_TH_ITUNES_WIDE_WW_ARTWORK_4320x3240_3MNEN100000BQN.png/1200x675mf.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                      child: Container(
                    height: 50,
                    width: 50,
                    color: AppColors.blackColor,
                    child: const Center(
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  )),
                  Positioned(
                      top: 240,
                      left: 20,
                      right: 20,
                      child: SizedBox(
                        height: 60,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'A Man Called oto',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  '2022 . [commedy,drama] . 2h4m',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  '⭐️ 7 [684]',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                )
                              ],
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.info,
                              size: 30,
                            )
                          ],
                        ),
                      ))
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Story',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.redColor,
                          fontSize: 17),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                        'When livel yound famuly moves in next door.glumpy widower otto Andersom meerts his matchj in a quicki-witted pregnant woimwm named marisol leading to an unlikesy friendship that rurns his world upside dowm'),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Cast',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.redColor,
                          fontSize: 17),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 180,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 60,
                                  backgroundImage: NetworkImage(
                                      'https://flxt.tmsimg.com/assets/807139_v9_bb.jpg'),
                                ),
                              ),
                              Text(
                                'Raichel',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Sonya')
                            ],
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Related Videos',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.redColor,
                          fontSize: 17),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 220,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Container(
                                  height: 200,
                                  width: 300,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: const DecorationImage(
                                          image: NetworkImage(
                                              'https://is4-ssl.mzstatic.com/image/thumb/Video126/v4/de/dc/65/dedc65e2-cf93-f8ae-d1a0-31727e7a458e/SPE_MAN_CALLED_OTTO_A_TH_ITUNES_WIDE_WW_ARTWORK_4320x3240_3MNEN100000BQN.png/1200x675mf.jpg'),
                                          fit: BoxFit.fill)),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 270,
                      child: ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return const MovieContainer();
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
