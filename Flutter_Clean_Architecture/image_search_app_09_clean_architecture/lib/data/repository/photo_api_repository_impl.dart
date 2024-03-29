import 'package:image_search_app_09_clean_architecture/data/data_source/pixabay_api.dart';
import 'package:image_search_app_09_clean_architecture/domain/model/photo.dart';
import 'package:image_search_app_09_clean_architecture/domain/repository/photo_api_repository.dart';

class PhotoApiRepositoryImpl implements PhotoApiRepository {
  PixabayApi api;

  // final api = PixabayApi(http.Client());
  PhotoApiRepositoryImpl(this.api);

  @override
  Future<List<Photo>> fetch(String query) async {
    final result = await api.fetch(query);

    return result.map((e) => Photo.fromJson(e)).toList();
  }
}
