import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallpaper_ui/screens/Home/cubit/trending_wallpaperstate.dart';
import 'package:wallpaper_ui/models/wallpaper_models.dart';
import 'package:wallpaper_ui/repository/wallpaper_repo.dart';

class HomeCubit extends Cubit<HomeState> {
  WallPaperRepository wallPaperRepository;
  HomeCubit({required this.wallPaperRepository}) : super(HomeInitialState());

  void getTrendingWallpaper() async {
    emit(HomeLoadingState());
    try {
      var data = await wallPaperRepository.getTraindingWallpaper();
      var wallppaperModel = WallpaperDataModels.fromJson(data);
      emit(HomeLoadedState(listPhotos: wallppaperModel.photos!));
    } catch (e) {
      emit(HomeErrorState(errorMsg: e.toString()));
    }
  }
}
