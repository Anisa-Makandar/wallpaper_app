import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallpaper_ui/app_widgets/wallpaper_bgwidget.dart';
import 'package:wallpaper_ui/screens/search/cubit/search_cubit.dart';
import 'package:wallpaper_ui/screens/search/cubit/search_state.dart';
import 'package:wallpaper_ui/utils/ui_helper.dart';

class SearchWallpaper extends StatefulWidget {
  String query;
  String color;
  SearchWallpaper({required this.query, this.color = ""});

  @override
  State<SearchWallpaper> createState() => _SearchWallpaperState();
}

class _SearchWallpaperState extends State<SearchWallpaper> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SearchCubit>(context)
        .getSearchWallpaper(query: widget.query, color: widget.color);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryLightColor,
        body: BlocBuilder<SearchCubit, SearchState>(builder: (_, State) {
          if (State is SearchLoadingState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (State is SearchErrorState) {
            return Center(
              child: Text('${State.errorMsg}'),
            );
          } else if (State is SearchLoadedState) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27),
              child: ListView(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    widget.query,
                    style: mTextStyle34(mFontWeight: FontWeight.w900),
                  ),
                  Text(
                    "${State.totalWallpaper} Wallpaper Available",
                    style: mTextStyle14(),
                  ),
                  SizedBox(
                    height: 21,
                  ),
                  Container(
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: State.listPhotos.length,
                      itemBuilder: (_, index) {
                        var eachphoto = State.listPhotos[index];
                        return Padding(
                          padding: EdgeInsets.only(
                              bottom: index == State.listPhotos.length - 1
                                  ? 11
                                  : 0),
                          child: WallPaperbgWidget(
                              imgUrl: eachphoto.src!.portrait!),
                        );
                      },
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 11,
                        crossAxisSpacing: 11,
                        childAspectRatio: 3 / 4,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
          return Container();
        }));
  }
}
