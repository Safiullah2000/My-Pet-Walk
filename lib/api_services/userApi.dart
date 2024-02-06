// import 'dart:io';

// import 'package:pets/screens/SignupScreen/components/community.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

import '../constants/api_constants.dart';
import 'ApiHelper.dart';

class UserAPI {
  //Check API
  // checkApi(String authCode) async {
  //   var client = http.Client();
  //   var url = apiBaseUrl + CHECK_API + authCode;
  //   var jsonMap;
  //   try {
  //     var response = await client.get(Uri.parse(url));
  //     print(response);
  //     if (response.statusCode == 200) {
  //       var jsonString = response.body;
  //       jsonMap = json.decode(jsonString);
  //       return jsonMap;
  //     } else {
  //       print(response.statusCode);
  //     }
  //   } on SocketException {
  //     print("error");
  //   } catch (exception) {
  //     return jsonMap;
  //   }
  // }

  //Send OTP
  sendOtp(
    BuildContext context,
    Map<String, String> param,
  ) async {
    var url = SEND_OTP;
    Map<String, String> params = param;
    var response = await ApiHelper().getTypePost(context, url, params);
    return response;
  }

  //Verify OTP
  verifyOtp(
    BuildContext context,
    Map<String, String> param,
  ) async {
    var url = VERIFY_OTP;
    Map<String, String> params = param;
    var response = await ApiHelper().getTypePost(context, url, params);
    print(response);
    return response;
  }

  // Check API
  checkApi(
    BuildContext context,
    param,
  ) async {
    var url = CHECK_API + param;

    var response = await ApiHelper().getTypeGet(
      context,
      url,
    );
    print(response);
    return response;
  }

  signUp(
    BuildContext context,
    Map<String, String> param,
  ) async {
    var url = SIGN_UP;
    Map<String, String> params = param;
    var response = await ApiHelper().getTypePost(context, url, params);
    print(response);
    return response;
  }

  city(
    BuildContext context,
    Map<String, String> param,
  ) async {
    var url = CITY;
    Map<String, String> params = param;
    var response = await ApiHelper().getTypePost(context, url, params);
    print(response);
    return response;
  }

  banner(BuildContext context) async {
    // ignore: unused_local_variable
    var headers = await ApiHelper().getHeader(context);
    var url = BANNER;
    var response = await ApiHelper().getTypeGet(context, url);
    return response;
  }

  category(
    BuildContext context,
  ) async {
    // ignore: unused_local_variable
    var headers = await ApiHelper().getHeader(context);
    var url = CATEGORY;

    var response = await ApiHelper().getTypeGet(
      context,
      url,
    );
    print(response);
    return response;
  }

  productsBySubCategory(BuildContext context, Map<String, String> param) async {
    var headers = await ApiHelper().getHeader(context);
    var url = PRODUCT_BY_SUB_CATEGORY + headers['auth_code'];
    Map<String, String> params = {
      // 'sub_cat_id': subCatId,
      // 'page': page
    };
    var response = await ApiHelper().getTypePost(context, url, params);
    print("response");
    print(response);
    return response;
  }

  SubCategories(BuildContext context, String categoryId, String page) async {
    var headers = await ApiHelper().getHeader(context);
    var url = SUB_CATEGORies + headers['auth_code'];
    Map<String, String> params = {'category_id': categoryId, 'page': page};
    // Map<String, String> params = param;
    var response = await ApiHelper().getTypePost(context, url, params);
    print("response");
    print(response);
    return response;
  }

  community(
    BuildContext context,
    param,
  ) async {
    var url = COMMUNITY + param;

    var response = await ApiHelper().getTypeGet(
      context,
      url,
    );
    print(response);
    return response;
  }
}
