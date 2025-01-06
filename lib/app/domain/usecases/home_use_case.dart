import 'package:kon/app/core/usecases/usecase.dart';
import 'package:kon/app/domain/models/news_model.dart';
import 'package:kon/app/domain/models/news_params.dart';
import 'package:kon/app/domain/repositories/abstract_article_repo.dart';

class HomeUseCase extends Usecase<List<NewsResult>, NewsParams> {
  AbstractArticleRepo abstractArticleRepo;
  HomeUseCase({required this.abstractArticleRepo});

  @override
  Future<List<NewsResult>> call(NewsParams params) async {
    final result = await abstractArticleRepo.getNews(params);
    return result;
  }
}
