class Constants {
  // static const String BASE_URL = "http://192.168.8.149:8000/"; // home
  static const String BASE_URL = "http://192.168.1.25:8000/"; // work
  // static const String BASE_URL = "http://localhost:8000/"; // work

  static const String API_URL = BASE_URL + "api/v1/";
  static const String AUTH_URL = BASE_URL + "api/auth/client/login";
  static const String SIGNUP_URL = BASE_URL + "api/auth/client/signup";

  static const ACCESS_TOKEN_KEY = "access_token";

  static const PENDING = "Pending";
  static const RENTED = "Rented";
  static const RETURNED = "Returned";

}
