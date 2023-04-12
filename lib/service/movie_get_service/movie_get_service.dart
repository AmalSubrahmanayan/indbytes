import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:indbytes/constants/api_endpoints/api_endpoints.dart';
import 'package:indbytes/model/movie_model/movie_model.dart';

class HomeService {
  final Dio _dio = Dio();

  Future<MovieGetModel> getMovies() async {
    try {
      final response = await _dio.get(ApiEndPoints.trending, queryParameters: {
        'api_key': ApiEndPoints.apiKey,
      });
      if (response.statusCode == 200) {
        log('success');
        final MovieGetModel movieGetModel =
            MovieGetModel.fromJson(response.data);
        log(response.toString());
        return movieGetModel;
      } else {
        log('else');
        throw Exception('Failed to get movies');
      }
    } catch (e) {
      log('error');
      throw Exception('Failed to get movies: $e');
    }
  }
}
// class MovieService with ChangeNotifier {
//   final Dio _dio = Dio();

//   Future<MovieGetModel> getMovies() async {
//     try {
//       final response = await _dio.get(ApiEndPoints.trending, queryParameters: {
//         'api_key': ApiEndPoints.apiKey,
//       });
//       if (response.statusCode == 200) {
//         log('success');
//         final MovieGetModel movieGetModel =
//             MovieGetModel.fromJson(response.data);
//         log(response.toString());
//         return movieGetModel;
//       } else {
//         log('else');
//         throw Exception('Failed to get movies');
//       }
//     } catch (e) {
//       log('error');
//       throw Exception('Failed to get movies: $e');
//     }
//   }
// }

