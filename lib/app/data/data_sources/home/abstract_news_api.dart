import 'package:kon/app/domain/models/news_model.dart';
import 'package:kon/app/domain/models/news_params.dart';

abstract class AbstractNewsApi {
  Future<List<NewsResult>> getNews(NewsParams params);
}
