import 'package:flutter/material.dart';
import 'package:instagram/resors/app_images.dart';
import 'package:instagram/resors/app_logos.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBar(),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        _storys(title: "Your Story", image: AppImages.my),
                        _storys(title: "hunt_branding", image: AppImages.hunt),
                        _storys(title: "thomas", image: AppImages.thomas),
                        _storys(title: "david", image: AppImages.david),
                        _storys(title: "mczee", image: AppImages.mczee),
                      ],
                    ),
                  ),
                ),
                _geDivider(),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 16, left: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 42,
                            height: 42,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                  color: Colors.purpleAccent, width: 2),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(AppImages.mczee),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    "mczee",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: -0.21,
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  Image.asset(AppLogos.galichka),
                                ],
                              ),
                              const Text(
                                "Location, Location",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -0.18,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Image.asset(AppLogos.group),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 393,
                  color: Colors.tealAccent,
                  child: Image.asset(AppImages.photo, fit: BoxFit.cover),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(AppLogos.heart),
                              const SizedBox(width: 16),
                              Image.asset(AppLogos.comment),
                              const SizedBox(width: 16),
                              Image.asset(AppLogos.chat),
                            ],
                          ),
                          Image.asset(AppLogos.save),
                        ],
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        "247 likes",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.21,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Row(
                        children: const [
                          Text(
                            "247 likes ",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              letterSpacing: -0.21,
                            ),
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet ",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.21,
                            ),
                          ),
                          Text(
                            "... more",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.21,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 6),
                      const Text(
                        "10 minutes ago",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.21,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(AppLogos.homeIcon),
              Image.asset(AppLogos.searchIcon),
              Image.asset(AppLogos.plusIcon),
              Image.asset(AppLogos.reelsIcon),
              Container(
                width: 38,
                height: 38,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(AppImages.my),
                ),
              ),
            ],
          ),
        ));
  }

  _appBar() => AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              AppLogos.instagram,
            ),
            Row(
              children: [
                Image.asset(
                  AppLogos.heart,
                ),
                const SizedBox(width: 27),
                Image.asset(
                  AppLogos.chat,
                ),
              ],
            )
          ],
        ),
      );
  _storys({required String title, required String image}) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Column(
          children: [
            Container(
              width: 72,
              height: 72,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.purpleAccent, width: 2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(image),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.black,
                fontWeight: FontWeight.w400,
                letterSpacing: -0.18,
              ),
            )
          ],
        ),
      );
  _geDivider() => Column(
        children: const [
          SizedBox(height: 11),
          Divider(thickness: 1),
          SizedBox(height: 11),
        ],
      );
}
