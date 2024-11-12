import 'package:wallpaper_ui/models/wallpaper_models.dart';

abstract class HomeState {}

class HomeInitialState extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeLoadedState extends HomeState {
  List<PhotosModel> listPhotos;
  HomeLoadedState({required this.listPhotos});
}

class HomeErrorState extends HomeState {
  String errorMsg;
  HomeErrorState({required this.errorMsg});
}
