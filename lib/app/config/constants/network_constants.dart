class NetworkConstants {
  static const int getApiTimeoutDuration = 10;
  static const int postApiTimeoutDuration = 20;
  static const int successCode = 200;
  static const int failureCode = 400;
  static const int serverErrorCode = 500;
  static const baseUrl = "http://api.nytimes.com/";

  static const String apiUrl =
      "https://api.nytimes.com/svc/mostpopular/v2/mostviewed/all-sections/30.json?api-key=WiRqmPm4mBO4ssOsQL7uWDS0lJO4KviJ";

  static String getSplashApi(String name) {
    return "baseUrl$name";
  }

  static String getHomeApi() {
    return baseUrl;
  }
}
