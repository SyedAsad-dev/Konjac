import 'package:kon/app/core/injections.dart';
import 'package:kon/app/data/data_sources/home/news_api_impl.dart';
import 'package:kon/app/data/repositories/article_repo_impl.dart';
import 'package:kon/app/domain/repositories/abstract_article_repo.dart';
import 'package:kon/app/domain/usecases/home_use_case.dart';
import 'package:kon/app/presentation/modules/home/controllers/home_controller.dart';

initArticlesInjections() {
  sl.registerSingleton<NewsApiImpl>(NewsApiImpl());
  sl.registerSingleton<AbstractArticleRepo>(ArticlesRepositoryImpl(sl()));
  // sl.registerSingleton<ArticlesSharedPrefs>(ArticlesSharedPrefs(sl()));
  sl.registerSingleton<HomeUseCase>(HomeUseCase(abstractArticleRepo: sl()));
}
