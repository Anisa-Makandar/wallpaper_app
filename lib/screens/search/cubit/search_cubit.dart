import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import 'package:wallpaper_ui/screens/Home/cubit/trending_wallpaperstate.dart';
import 'package:wallpaper_ui/models/wallpaper_models.dart';
import 'package:wallpaper_ui/repository/wallpaper_repo.dart';
import 'package:wallpaper_ui/screens/search/cubit/search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  WallPaperRepository wallPaperRepository;
  SearchCubit({required this.wallPaperRepository})
      : super(SearchInitialState());

  void getSearchWallpaper({required String query, String color = ""}) async {
    emit(SearchLoadingState());
    try {
      var mdata =
          await wallPaperRepository.getSeatchWallpaper(query, mColor: color);
      WallpaperDataModels wallpaperDataModels =
          WallpaperDataModels.fromJson(mdata);
      emit(SearchLoadedState(
          listPhotos: wallpaperDataModels.photos!,
          totalWallpaper: wallpaperDataModels.total_results!));
    } catch (e) {
      emit(SearchErrorState(errorMsg: e.toString()));
    }
  }
}
