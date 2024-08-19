import 'package:mvvm/data/network/BaseApiServices.dart';
import 'package:mvvm/data/network/NetworkApiService.dart';
import 'package:mvvm/model/movie_model.dart';
import 'package:mvvm/res/app_url.dart';

class HomeRepository {
  BaseApiServices _apiServices = NetworkApiService();

  Future<MoviesListModel> fetchMoviesListApi() async {
    try {
      dynamic response =
          await _apiServices.getGetApiResponse(AppUrl.moviesListUrl);
      return response = MoviesListModel.fromJson(response);
    } catch (e) {
      throw e;
    }
  }
}
