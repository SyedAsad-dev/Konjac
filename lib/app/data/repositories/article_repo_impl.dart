import 'package:kon/app/core/error/app_exceptions.dart';
import 'package:kon/app/data/data_sources/home/news_api_impl.dart';
import 'package:kon/app/domain/models/news_model.dart';
import 'package:kon/app/domain/models/news_params.dart';
import 'package:kon/app/domain/repositories/abstract_article_repo.dart';

class ArticlesRepositoryImpl extends AbstractArticleRepo {
  final NewsApiImpl articlesApi;

  ArticlesRepositoryImpl(
    this.articlesApi,
  );

  // Gent Ny Times Articles
  @override
  Future<List<NewsResult>> getNews(NewsParams params) async {
    try {
      final result = await articlesApi.getNews(params);
      return result;
    } on ServerException catch (e) {
      throw ServerException();
    }
  }
}
