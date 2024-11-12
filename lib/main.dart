import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallpaper_ui/screens/Home/colortonepage_firebase.dart';
import 'package:wallpaper_ui/screens/Home/cubit/trending_wallpapercubit.dart';
import 'package:wallpaper_ui/domain/api_helper.dart';
import 'package:wallpaper_ui/repository/wallpaper_repo.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: BlocProvider(
      create: (context) => HomeCubit(
          wallPaperRepository: WallPaperRepository(apiHelper: ApiHelper())),
      child: ColorTonePage(),
    ));
  }
}
