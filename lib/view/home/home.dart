import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:indbytes/constants/colors/app_colors.dart';
import 'package:indbytes/view/home/widgets/movie_container.dart';
import 'package:indbytes/view/home/widgets/movie_title.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../controller/home/home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  // final controller = PageController(viewportFraction: 0.8, keepPage: true);
  // final carcontroller = CarouselController(viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {
    // final movieService = Provider.of<MovieService>(context, listen: false);
    // final MyCarouselController carouselController =
    // Provider.of<MyCarouselController>(context, listen: false);

    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: IconButton(
                    onPressed: () async {
                      // await HomeService().getMovies();
                      await MyCarouselController().getCarousals();
                    },
                    icon: const Icon(
                      Icons.settings,
                      color: AppColors.blackColor,
                    )),
              )
            ],
            backgroundColor: AppColors.whiteColor,
            elevation: 0,
            toolbarHeight: 100,
            title: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: SizedBox(
                height: 40,
                width: 200,
                child: TabBar(
                  labelColor: AppColors.whiteColor,
                  unselectedLabelColor: AppColors.redColor,
                  indicator: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(0),
                      color: AppColors.redColor),
                  tabs: const [
                    Text('Movies'),
                    Text('Tv shows'),
                  ],
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Consumer<MyCarouselController>(
                        builder: (context, values, _) {
                      return CarouselSlider.builder(
                        itemCount: 4,
                        // itemCount: values.carousalList.length,
                        itemBuilder: (BuildContext context, int itemIndex,
                                int pageViewIndex) =>
                            Stack(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://static.toiimg.com/thumb/msid-94394317,width-1280,resizemode-4/94394317.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                            const Positioned(
                              top: 130,
                              child: Text(
                                "carousal texy",
                                // values.carousalList[itemIndex].overview,
                                style: TextStyle(
                                    color: AppColors.blackColor,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Positioned(
                              top: 150,
                              child: AnimatedSmoothIndicator(
                                activeIndex: 3,
                                count: 6,
                                effect: ExpandingDotsEffect(
                                    radius: 9,
                                    dotColor: AppColors.redColor,
                                    activeDotColor: AppColors.redColor,
                                    dotHeight: 10,
                                    dotWidth: 10),
                              ),
                            )
                          ],
                        ),
                        options: CarouselOptions(
                          aspectRatio: 2.0,
                          viewportFraction: 1.0,
                          autoPlay: false,
                          enlargeCenterPage: true,
                        ),
                      );
                    }),
                    const SizedBox(
                      height: 30,
                    ),
                    const MovieTile(
                      txt: 'Now Playing',
                    ),
                    SizedBox(
                      height: 260,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        itemBuilder: (BuildContext context, int index) {
                          return const MovieContainer();
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const MovieTile(
                      txt: 'Up Coming',
                    ),
                    SizedBox(
                      height: 260,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        itemBuilder: (BuildContext context, int index) {
                          return const MovieContainer();
                        },
                      ),
                    ),
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
