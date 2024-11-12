import 'package:wallpaper_ui/domain/api_helper.dart';
import 'package:wallpaper_ui/domain/urls.dart';

class WallPaperRepository {
  ApiHelper apiHelper;
  WallPaperRepository({required this.apiHelper});
  //search
  Future<dynamic> getSeatchWallpaper(String mQuery,
      {String mColor = ""}) async {
    try {
      return await apiHelper.getAPI(
          url: "${AppUrls.SEARCH_WALL_URL}?query=$mQuery&color=$mColor");
    } catch (e) {
      throw (e);
      //OR
      //  rethrow;
    }
  }

  //trending
  Future<dynamic> getTraindingWallpaper() async {
    try {
      return await apiHelper.getAPI(url: AppUrls.TRENDING_WALL_URL);
    } catch (e) {
      throw (e);
      //OR
      //  rethrow;
    }
  }
}
