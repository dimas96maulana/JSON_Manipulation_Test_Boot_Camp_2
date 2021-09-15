import 'package:flutter/widgets.dart';
import 'package:json_manipulation/models/json_array.dart';
import 'package:json_manipulation/services/user_api.dart';

enum HomeState {
  Initial,
  Loading,
  Loaded,
  Error,
} 

class UserModel extends ChangeNotifier {
  HomeState _homeState = HomeState.Initial;
  List<JsonArray> users = [];
  String message = '';

  UserModel() {
    _fetchUsers();
  }

  HomeState get homeState => _homeState;

  Future<void> _fetchUsers() async {
    _homeState = HomeState.Loading;
    try {
      await Future.delayed(Duration(seconds: 5));
      final apiusers = await UserApi.instance!.getAllUser();
      users = apiusers;
      _homeState = HomeState.Loaded;
    } catch (e) {
      message = '$e';
      _homeState = HomeState.Error;
    }
    notifyListeners();
  }
}
