import 'package:flutter/material.dart';

import '../api_services/userApi.dart';

class UserProvider extends ChangeNotifier {
  String? status;
  String? sessionCode;
  String? contactNo;
  String enteredOtp = ''; // Variable to store the entered OTP
  bool isUserRegistered = false;
  List<dynamic> banners = [];
  List<dynamic> categories = [];
  List<dynamic> subCategoryDetails = [];

  List<dynamic> productsBySubCategory = [];
  bool _isLoading = false;
  bool get isLoading => _isLoading;
  String categoryId = '0';

  void setEnteredOtp(String otp) {
    enteredOtp = otp;
    notifyListeners();
  }

  void setOtpResponse(String status, String sessionCode, String contactNo) {
    this.status = status;
    this.sessionCode = sessionCode;
    this.contactNo = contactNo;

    notifyListeners();
  }

  var checkApiResponse;
  void setCheckApiResponse(Map<String, dynamic> response) {
    // Store the response in a state variable
    checkApiResponse = response;
    isUserRegistered = response['detail']['email'] != null;
    notifyListeners();
  }

  void clearOtpContactSession() {
    enteredOtp = '';
    contactNo = '';
    sessionCode = '';
  }

  String? _authCode;

  String? get authCode => _authCode;

  void setAuthCode(String? code) {
    _authCode = code;
    notifyListeners();
  }

  String selectedTitle = "Select Type";
  String username = '';
  String email = '';
  String city = '';

  // ... other methods

  void resetFormData() {
    selectedTitle = "Select Type";
    username = '';
    email = '';
    city = '';
    notifyListeners();
  }

  void bannersResponse(BuildContext context) async {
    try {
      var response = await UserAPI().banner(context);
      print(response);
      if (response['status'] == 'OK') {
        banners = response['details'];
        _isLoading = false;
        notifyListeners();
        return response;
      } else {
        return response;
      }
    } catch (error) {
      _isLoading = false;
      notifyListeners();
      throw Exception('Failed to load data');
    }
  }

  void categoriesResponse(BuildContext context) async {
    try {
      var response = await UserAPI().category(context);
      print(response);
      if (response['status'] == 'OK') {
        categories = response['details'];
        _isLoading = false;
        notifyListeners();
        return response;
      } else {
        return response;
      }
    } catch (error) {
      _isLoading = false;
      notifyListeners();
      throw Exception('Failed to load data');
    }
  }

  // getSubCategoryDetails(BuildContext context, params) async {
  //   Map<String, String> param = {
  //     'category_id': categoryId.toString(),
  //     'page': '1',
  //   };
  //   try {

  //   var response = await UserAPI().SubCategories(
  //     context,
  //     param,
  //   );
  //   print(response);
  //   if (response['status'] == 'OK') {
  //     subCategoryDetails = response['details'];
  //     _isLoading = false;
  //     notifyListeners();
  //     return response;
  //   } else {
  //     return response;
  //   }
  //   } catch (error) {
  //     _isLoading = false;
  //     notifyListeners();
  //     throw Exception('Failed to load data');
  //   }
  // }

  void setCategoryId(String type) {
    print("setCategoryId " + type.toString());
    categoryId = type;
    notifyListeners();
  }

  void setSubCategoryDetails(List type) {
    print("setCategoryId " + type.toString());
    subCategoryDetails = type;
    notifyListeners();
  }
}
