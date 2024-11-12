class SourceModel {
  String? landscape;
  String? large;
  String? large2x;
  String? medium;
  String? original;
  String? portrait;
  String? small;
  String? tiny;
  SourceModel({
    required this.landscape,
    required this.large,
    required this.large2x,
    required this.medium,
    required this.original,
    required this.portrait,
    required this.small,
    required this.tiny,
  });
  factory SourceModel.fromJson(Map<String, dynamic> json) {
    return SourceModel(
      landscape: json['landscape'],
      large: json['large'],
      large2x: json['large2x'],
      medium: json['medium'],
      original: json['original'],
      portrait: json['portrait'],
      small: json['small'],
      tiny: json['tiny'],
    );
  }
}

class PhotosModel {
  String? tiny;
  String? avg_color;
  double? height;
  int? id;
  bool? liked;
  String? photographer;
  int? photographer_id;
  String? photographer_url;
  SourceModel? src;
  String? url;
  double? width;
  PhotosModel({
    required this.tiny,
    required this.avg_color,
    required this.height,
    required this.id,
    required this.liked,
    required this.photographer,
    required this.photographer_id,
    required this.photographer_url,
    required this.src,
    required this.url,
    required this.width,
  });
  factory PhotosModel.fromJson(Map<String, dynamic> json) {
    return PhotosModel(
      tiny: json['tiny'],
      avg_color: json['avg_color'],
      height: json['height'],
      id: json['id'],
      liked: json['liked'],
      photographer: json['photographer'],
      photographer_id: json['photographer_id'],
      photographer_url: json['photographer_url'],
      src: SourceModel.fromJson(json['src']),
      url: json['url'],
      width: json['width'],
    );
  }
}

class WallpaperDataModels {
  String? next_page;
  int? page;
  int? per_page;
  List<PhotosModel>? photos;
  int? total_results;
  WallpaperDataModels(
      {required this.next_page,
      required this.page,
      required this.per_page,
      required this.photos,
      required this.total_results});
  factory WallpaperDataModels.fromJson(Map<String, dynamic> json) {
    List<PhotosModel> mPhotos = [];
    for (Map<String, dynamic> eachPhotos in json['photos']) {
      mPhotos.add(PhotosModel.fromJson(eachPhotos));
    }
    return WallpaperDataModels(
      next_page: json['next_page'],
      page: json['page'],
      per_page: json['per_page'],
      photos: mPhotos,
      total_results: json['total_results'],
    );
  }
}
