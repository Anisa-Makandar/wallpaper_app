import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallpaper_ui/domain/api_helper.dart';
import 'package:wallpaper_ui/repository/wallpaper_repo.dart';
import 'package:wallpaper_ui/screens/Home/cubit/trending_wallpapercubit.dart';
import 'package:wallpaper_ui/screens/Home/cubit/trending_wallpaperstate.dart';
import 'package:wallpaper_ui/app_widgets/wallpaper_bgwidget.dart';
import 'package:wallpaper_ui/domain/app_constants.dart';
import 'package:wallpaper_ui/screens/search/cubit/search_cubit.dart';
import 'package:wallpaper_ui/screens/search/search_wallpaper_page.dart';
import 'package:wallpaper_ui/utils/ui_helper.dart';

class ColorTonePage extends StatefulWidget {
  @override
  State<ColorTonePage> createState() => _ColorTonePageState();
}

class _ColorTonePageState extends State<ColorTonePage> {
  final searchController = TextEditingController();
  @override
  void initState() {
    super.initState();
    BlocProvider.of<HomeCubit>(context).getTrendingWallpaper();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryLightColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            //1
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                controller: searchController,
                style: mTextStyle12(),
                decoration: InputDecoration(
                  suffixIcon: InkWell(
                    onTap: () {
                      if (searchController.text.isNotEmpty) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BlocProvider(
                                      create: (context) => SearchCubit(
                                          wallPaperRepository:
                                              WallPaperRepository(
                                                  apiHelper: ApiHelper())),
                                      child: SearchWallpaper(
                                        query: searchController.text,
                                      ),
                                    )));
                      }
                    },
                    child: Icon(
                      Icons.search,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  hintText: 'Find Wallpaper...',
                  hintStyle: mTextStyle12(mColor: Colors.grey.shade400),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: AppColors.secondaryLightColor,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            //2
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Best of the month',
                style: mTextStyle16(mFontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            //3
            SizedBox(
                height: 200,
                child: BlocBuilder<HomeCubit, HomeState>(builder: (_, State) {
                  if (State is HomeLoadingState) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (State is HomeErrorState) {
                    return Center(
                      child: Text('${State.errorMsg}'),
                    );
                  } else if (State is HomeLoadedState) {
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: State.listPhotos.length,
                      itemBuilder: (_, index) {
                        var eachphotos = State.listPhotos[index];
                        // final imageUrl =
                        //     AppConstants.gategoriesCard[index]['image'];
                        return Padding(
                          padding: EdgeInsets.only(
                              left: 11.0,
                              right: index == State.listPhotos.length - 1
                                  ? 11
                                  : 0),
                          child: WallPaperbgWidget(
                            imgUrl: eachphotos.src!.portrait!,
                          ),
                        );
                      },
                    );
                  }
                  return Container();
                })),
            //4

            SizedBox(
              height: 16,
            ),
            //2
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Color Tone',
                style: mTextStyle16(mFontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            //3
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: AppConstants.colorData.length,
                itemBuilder: (_, index) {
                  return Padding(
                      padding: EdgeInsets.only(
                          left: 11.0,
                          right: index == AppConstants.colorData.length - 1
                              ? 11
                              : 0),
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BlocProvider(
                                          create: (context) => SearchCubit(
                                              wallPaperRepository:
                                                  WallPaperRepository(
                                                      apiHelper: ApiHelper())),
                                          child: SearchWallpaper(
                                            query:
                                                searchController.text.isNotEmpty
                                                    ? searchController.text
                                                    : "Nature",
                                            color: AppConstants.colorData[index]
                                                ['code'],
                                          ),
                                        )));
                          },
                          child: getColorToneWidget(
                              AppConstants.colorData[index]['color'])));
                },
              ),
            ),
            SizedBox(
              height: 16,
            ),
            //2
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Categories',
                style: mTextStyle16(mFontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            //3
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: AppConstants.gategoriesCard.length,
                itemBuilder: (_, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BlocProvider(
                                    create: (context) => SearchCubit(
                                        wallPaperRepository:
                                            WallPaperRepository(
                                                apiHelper: ApiHelper())),
                                    child: SearchWallpaper(
                                      query: AppConstants.gategoriesCard[index]
                                          ['title'],
                                    ),
                                  )));
                    },
                    child: getCategoriesWidget(
                        AppConstants.gategoriesCard[index]['image'],
                        AppConstants.gategoriesCard[index]['title']),
                  );
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 11,
                  crossAxisSpacing: 11,
                  childAspectRatio: 9 / 4,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Colors tone widget
  Widget getColorToneWidget(Color colorData) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: colorData,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  // Categorized widget
  Widget getCategoriesWidget(String imgUrl, String title) {
    return Container(
      height: 100,
      width: 200,
      child: Center(
        child: Text(
          title,
          style:
              mTextStyle14(mColor: Colors.white, mFontWeight: FontWeight.w400),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21),
        image: DecorationImage(
          image: NetworkImage(imgUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
