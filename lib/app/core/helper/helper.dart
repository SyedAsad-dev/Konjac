import 'package:kon/app/config/constants/app_constants.dart';

class Helper {
  /// Get svg picture path
  static String getSvgPath(String name) {
    return "${AppConstants.svgPath}$name";
  }

  /// Get image picture path
  static String getImagePath(String name) {
    return "${AppConstants.imagesPath}$name";
  }
}
