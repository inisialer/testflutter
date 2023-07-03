import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';

class NetworkHelper {
  static const String divider = "\n------------------------------------";
  static final Dio _dio = Dio();

  static const TOKEN = "Token";
  static const _connectTimeoutDefault = Duration(seconds: 60);
  static const _receiveTimeoutDefault = Duration(seconds: 60);
  static const _sendTimeoutDefault = Duration(seconds: 60);

  String _formDataToJson(FormData formData) {
    final fields = formData.fields;
    final files = formData.files;
    final map = <String, String>{};

    for (MapEntry<String, String> field in fields) {
      map[field.key] = field.value;
    }

    for (MapEntry<String, MultipartFile> file in files) {
      map[file.key] = file.value.filename ?? '';
    }

    return json.encode(map);
  }

  Future<Response> get(String endpoint,
      {bool isUseToken = true,
      Map<String, dynamic>? params,
      Function(int, int)? progress,
      Options? options}) async {
    // PreferencesHelper preferencesHelper =
    //     PreferencesHelper(sharedPreferences: SharedPreferences.getInstance());
    log('get');
    // final dio = await client(isUseToken: isUseToken);

    // dio.options.headers['Authorization'] =
    //     'Bearer ${await preferencesHelper.getToken}';
    return await _dio.get(endpoint,
        queryParameters: params, onReceiveProgress: progress, options: options);
  }

  // Future<Response> post(String endpoint,
  //     {bool isUseToken = true,
  //     Map<String, dynamic>? params,
  //     Function(int, int)? receiveProgress,
  //     Function(int, int)? progress,
  //     Options? options,
  //     dynamic data}) async {
  //   PreferencesHelper preferencesHelper =
  //       PreferencesHelper(sharedPreferences: SharedPreferences.getInstance());

  //   String token = await preferencesHelper.getToken;
  //   final dio = await client(isUseToken: isUseToken);
  //   // log("token ${dio.toString()}");

  //   dio.options.headers['Authorization'] = 'Bearer $token';
  //   return await dio.post(endpoint,
  //       queryParameters: params,
  //       onReceiveProgress: receiveProgress,
  //       options: options,
  //       onSendProgress: progress,
  //       data: data);
  // }

  // Future<Response> postFormData(String endpoint,
  //     {bool isUseToken = true,
  //     Map<String, dynamic>? params,
  //     Function(int, int)? receiveProgress,
  //     Function(int, int)? progress,
  //     Options? options,
  //     dynamic data}) async {
  //   PreferencesHelper preferencesHelper =
  //       PreferencesHelper(sharedPreferences: SharedPreferences.getInstance());

  //   String token = await preferencesHelper.getToken;
  //   log("token $token");
  //   _dio.options.headers['Authorization'] = 'Bearer $token';
  //   _dio.options.headers['Content-Type'] = 'multipart/form-data';
  //   return await _dio.post(endpoint,
  //       queryParameters: params,
  //       onReceiveProgress: receiveProgress,
  //       options: options,
  //       onSendProgress: progress,
  //       data: data);
  // }

  // Future<Response> put(String endpoint,
  //     {bool isUseToken = true,
  //     Map<String, dynamic>? params,
  //     Function(int, int)? receiveProgress,
  //     Function(int, int)? progress,
  //     Options? options,
  //     dynamic data}) async {
  //   PreferencesHelper preferencesHelper =
  //       PreferencesHelper(sharedPreferences: SharedPreferences.getInstance());

  //   _dio.options.headers['Authorization'] =
  //       'Bearer ${await preferencesHelper.getToken}';
  //   return await _dio.put(endpoint,
  //       queryParameters: params,
  //       onReceiveProgress: receiveProgress,
  //       onSendProgress: progress,
  //       options: options,
  //       data: data);
  // }

  // Future<Response> patch(String endpoint,
  //     {bool isUseToken = true,
  //     Map<String, dynamic>? params,
  //     Function(int, int)? receiveProgress,
  //     Function(int, int)? progress,
  //     Options? options,
  //     dynamic data}) async {
  //   PreferencesHelper preferencesHelper =
  //       PreferencesHelper(sharedPreferences: SharedPreferences.getInstance());

  //   _dio.options.headers['Authorization'] =
  //       'Bearer ${await preferencesHelper.getToken}';
  //   return await _dio.patch(endpoint,
  //       queryParameters: params,
  //       onReceiveProgress: receiveProgress,
  //       onSendProgress: progress,
  //       options: options,
  //       data: data);
  // }

  // Future<Response> delete(String endpoint,
  //     {bool isUseToken = true,
  //     Map<String, dynamic>? params,
  //     Options? options,
  //     dynamic data}) async {
  //   PreferencesHelper preferencesHelper =
  //       PreferencesHelper(sharedPreferences: SharedPreferences.getInstance());

  //   _dio.options.headers['Authorization'] =
  //       'Bearer ${await preferencesHelper.getToken}';
  //   return await _dio.delete(endpoint,
  //       queryParameters: params, options: options, data: data);
  // }

  // Future<Response> download(String endpoint,
  //     {bool isUseToken = true,
  //     savePath,
  //     dynamic data,
  //     Options? options,
  //     Function(int, int)? progress,
  //     Map<String, dynamic>? params}) async {
  //   PreferencesHelper preferencesHelper =
  //       PreferencesHelper(sharedPreferences: SharedPreferences.getInstance());

  //   _dio.options.headers['Authorization'] =
  //       'Bearer ${await preferencesHelper.getToken}';
  //   return await _dio.download(endpoint, savePath,
  //       data: data,
  //       options: options,
  //       onReceiveProgress: progress,
  //       queryParameters: params);
  // }

  // Future<Dio> client(
  //     {isUseToken = true,
  //     Duration? connectTimeout,
  //     Duration? receiveTimeout,
  //     Duration? sendTimeout}) async {
  //   // final client = Dio();
  //   // PreferencesHelper preferencesHelper =
  //   //     PreferencesHelper(sharedPreferences: SharedPreferences.getInstance());
  //   String token;
  //   if (isUseToken) {
  //     token = await preferencesHelper.getToken;
  //   } else {
  //     token = '';
  //   }
  //   _dio.interceptors.add(interceptor(token,
  //       connectTimeout: connectTimeout ?? _connectTimeoutDefault,
  //       receiveTimeout: receiveTimeout ?? _receiveTimeoutDefault,
  //       sendTimeout: sendTimeout ?? _sendTimeoutDefault));
  //   return _dio;
  // }

//   @deprecated
//   static Dio clientCrud() {
//     final client = Dio();
//     client.interceptors.add(crudInterceptor());
//     return client;
//   }

//   @deprecated
//   static Dio clientUpload() {
//     final client = Dio();
//     client.interceptors.add(uploadInterceptor());
//     return client;
//   }

  // InterceptorsWrapper interceptor(String token,
  //     {Duration connectTimeout = _connectTimeoutDefault,
  //     Duration receiveTimeout = _receiveTimeoutDefault,
  //     Duration sendTimeout = _sendTimeoutDefault}) {
  //   return InterceptorsWrapper(
  //     onRequest: (options, handler) async {
  //       log('message request');

  //       // String? token = await StorageService().readAccessToken();
  //       // options.headers['Authorization'] = 'Bearer $token';
  //       return handler.next(options);
  //     },
  //     onResponse: (options, handler) {
  //       log('message response');

  //       return handler.next(options);
  //     },
  //     onError: (DioError e, handler) async {
  //       log('message ${e.response?.statusCode.toString()}');
  //       if (e.response != null) {
  //         final PreferencesHelper preferencesHelper = PreferencesHelper(
  //             sharedPreferences: SharedPreferences.getInstance());
  //         ApiServiceAuth apiServiceAuth = ApiServiceAuth();
  //         if (e.response?.statusCode == 403 || e.response?.statusCode == 401) {
  //           Navigation.pushReplaceNoData(loginRoute);
  //           log('masuk error dio ga?');
  //           // RequestOptions requestOptions = e.requestOptions;
  //           // try {
  //           //   Response res = await refreshToken();
  //           //   if (res.statusCode == 200 || res.statusCode == 201) {
  //           //     String token = await preferencesHelper.getToken;
  //           //     // var accessToken = await GetStorage().read('accessToken');
  //           //     // var sessionId = await GetStorage().read('sessionId');
  //           //     // final opts = new Options(method: requestOptions.method);
  //           //     Dio().options.headers["Authorization"] = "Bearer $token";
  //           //     Dio().options.headers["Accept"] = "*/*";
  //           //     Dio().options.followRedirects = false;
  //           //     late Response response;

  //           //     if (requestOptions.method == 'GET') {
  //           //       response = await Dio().get(
  //           //         requestOptions.path,
  //           //         options: Options(
  //           //           method: requestOptions.method,
  //           //           headers: {
  //           //             'Authorization': 'Bearer $token',
  //           //           },
  //           //         ),
  //           //         queryParameters: requestOptions.queryParameters,
  //           //       );
  //           //     } else {
  //           //       response = await Dio().post(
  //           //         requestOptions.path,
  //           //         options: Options(
  //           //           method: requestOptions.method,
  //           //           headers: {
  //           //             'Authorization': 'Bearer $token',
  //           //           },
  //           //         ),
  //           //         data: requestOptions.data,
  //           //         queryParameters: requestOptions.queryParameters,
  //           //       );
  //           //     }
  //           //     if (response != null) {
  //           //       log('message');
  //           //       handler.resolve(response);
  //           //     } else {
  //           //       log('message else');

  //           //       handler.next(e);
  //           //     }
  //           //   } else {
  //           //     handler.next(e);
  //           //   }
  //           // } catch (a) {
  //           //   log('message else refresh $a');

  //           //   handler.next(e);
  //           // }
  //         } else {
  //           log('message else 2');

  //           handler.next(e);
  //         }
  //       }
  //     },
  //   );
  // }

//   @deprecated
//   static InterceptorsWrapper crudInterceptor() {
//     return InterceptorsWrapper(onRequest: (RequestOptions options,
//         RequestInterceptorHandler requestInterceptorHandler) {
//       final token = LocalHelper.getSession(TOKEN, defaultValue: null);

//       options.connectTimeout = 60000; //60s
//       options.receiveTimeout = 60000;
//       options.sendTimeout = 60000;
//       if (token != null) options.headers["Authorization"] = token;
//       if (token != null) options.headers["token"] = token;
//       final data = (options.data is FormData)
//           ? _formDataToJson(options.data as FormData)
//           : json.encode(options.data);

//       var logRequest =
//           "$divider\nRequest (${options.method}) : ${options.path} \n[Headers] : ${json.encode(options.headers)} \n[Params] : ${json.encode(options.queryParameters)} \n[Body] : $data \n$divider";
//       print(logRequest);

//       return options;
//     }, onResponse: (Response response,
//         ResponseInterceptorHandler responseInterceptorHandler) {
//       var logResponse =
//           "$divider\nResponse (${response.statusCode}) : ${json.encode(response.data)}\n$divider";
//       print(logResponse);

//       return response;
//     }, onError: (DioError error, ErrorInterceptorHandler) {
//       var logError = "$divider\nError : \nMessage : ${error.message}";

//       print(logError);

//       if (error.response != null) {
//         var errorResponse =
//             "Request : ${error.response.request.toString()}Headers : ${error.response.headers.toString()}Params: ${error.response.toString()}Data : ${json.encode(error.response.data)}";
//         print(errorResponse);
//       }

//       print("\n$divider");
//       return error;
//     });
//   }

//   @deprecated
//   static InterceptorsWrapper uploadInterceptor() {
//     return InterceptorsWrapper(onRequest: (RequestOptions options,
//         RequestInterceptorHandler requestInterceptorHandler) {
//       final token = LocalHelper.getSession(TOKEN, defaultValue: null);

//       options.connectTimeout = 120000; //2m
//       options.receiveTimeout = 120000;
//       options.sendTimeout = 120000;
//       if (token != null) options.headers["Authorization"] = token;
//       if (token != null) options.headers["token"] = token;
//       final data = (options.data is FormData)
//           ? _formDataToJson(options.data as FormData)
//           : options.data.toString();

//       var logRequest =
//           "Request (${options.method}) : ${options.path} \n[Headers] : ${json.encode(options.headers)} \n[Params] : ${json.encode(options.queryParameters)} \n[Body] : $data \n";
//       print(logRequest);

//       return options;
//     }, onResponse: (Response response, ResponseInterceptorHandler) {
//       var logResponse =
//           "Response (${response.statusCode}) : ${json.encode(response.data)}";
//       print(logResponse);

//       return response;
//     }, onError: (DioError error) {
//       var logError = "Error : \n"
//           "Message : ${error.message}";

//       print(logError);

//       if (error.response != null) {
//         var errorResponse =
//             "Response : ${error.response.request.toString()}Headers : ${json.encode(error.response.headers.toString())}Data : ${json.encode(error.response.data)}";
//         print(errorResponse);
//       }
//       return error;
//     });
//   }
// }

// extension NetworkError on DioError {
//   Map<String, dynamic> toJson() {
//     if (CommonUtil.isJsonValid(response.data)) {
//       return response.data;
//     } else {
//       if (response.data is Map) {
//         return json.decode(json.encode(response.data));
//       } else {
//         if (CommonUtil.isJsonValid(response.data)) {
//           return json.decode(response.data);
//         } else {
//           final contentJson = <String, dynamic>{};
//           contentJson["code"] = response.statusCode;
//           contentJson["data"] = null;
//           contentJson["message"] = response.statusMessage;
//           contentJson["error"] = message;

//           return json.decode(json.encode(contentJson));
//         }
//       }
//     }
//   }
}

// Future<Response> refreshToken() async {
//   // Response? response;
//   // Repository repository = Repository();
//   var dio = Dio();
//   final Uri apiUrl = Uri.parse(BASE_API + "/auth/refresh");
//   // var refreshToken = GetStorage().read('refreshToken');
//   var accessToken = GetStorage().read('accessToken');
//   var sessionId = GetStorage().read('sessionId');
//   // dio.options.headers["Authorization"] = "Bearer " + refreshToken;
//   dio.options.headers["cookie"] = sessionId;

//   // log(accessToken + "access token");
//   // log(refreshToken + "refrseh token");
//   log(sessionId + "cookie token");
//   // try {
//   var response = await dio.postUri(apiUrl);
//   if (response.statusCode == 200 || response.statusCode == 201) {
//     ResponseLogin refreshTokenModel =
//         ResponseLogin.fromJson(jsonDecode(response.toString()));
//     var box = GetStorage();
//     log('berhasil ga ?');

//     box.write('accessToken', refreshTokenModel.accessToken);
//     // box.write('refreshToken', refreshTokenModel.refreshToken);
//     // return response;
//   } else {
//     log('berhasil else?');
//     print(response.toString()); //TODO: logout
//     // return response;
//   }
//   try {
//     return response;
//   } on DioError {
//     return response;
//   }
//   // }
//   // catch (e) {
//   //   print(e.toString()); //TODO: logout
//   //       return response!;

//   // }
// }

// Future<Response> refreshToken() async {
//   // Response? response;
//   // Repository repository = Repository();
//   var dio = Dio();
//   final Uri apiUrl = Uri.parse("${BASE_API}api/auth/refresh");

//   // try {
//   var response = await dio.postUri(apiUrl);
//   if (response.statusCode == 200 || response.statusCode == 201) {
//     ResponseLogin refreshTokenModel =
//         ResponseLogin.fromJson(jsonDecode(response.toString()));
//     log('berhasil ga ? ${refreshTokenModel.data.token}');
//     PreferencesHelper preferencesHelper =
//         PreferencesHelper(sharedPreferences: SharedPreferences.getInstance());
//     preferencesHelper.setStringSharedPref(
//         'token', refreshTokenModel.data.token);
//   } else {
//     log('berhasil else?');
//     print(response.toString()); //TODO: logout
//     // return response;
//   }
//   try {
//     return response;
//   } on DioError {
//     return response;
//   }
//   // }
//   // catch (e) {
//   //   print(e.toString()); //TODO: logout
//   //       return response!;

//   // }
// }
