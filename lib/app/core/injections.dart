import 'package:get_it/get_it.dart';
import 'package:kon/app/presentation/modules/home/home_injection.dart';

final sl = GetIt.instance;
Future<void> initInjections() async {
  await initArticlesInjections();
}
