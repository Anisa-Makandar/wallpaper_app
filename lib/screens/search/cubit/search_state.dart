import 'package:wallpaper_ui/models/wallpaper_models.dart';

abstract class SearchState {}

class SearchInitialState extends SearchState {}

class SearchLoadingState extends SearchState {}

class SearchLoadedState extends SearchState {
  List<PhotosModel> listPhotos;
  int totalWallpaper;
  SearchLoadedState({required this.listPhotos, required this.totalWallpaper});
}

class SearchErrorState extends SearchState {
  String errorMsg;
  SearchErrorState({required this.errorMsg});
}
