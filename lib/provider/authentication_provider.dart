import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:todo_list/services/authentication_services.dart';

class AuthenticationProvider extends ChangeNotifier{
  User? _user;
  User? get user => _user;
  bool _isLoaded = false;
  bool get isLoaded =>_isLoaded;

  Authenticationservices _authenticationservices = Authenticationservices();

  AuthenticationProvider(){
    _user = _authenticationservices.currentUser;
  }

  Future<bool> signUp(String email, String password, String userName)async{
    try{
      _isLoaded = true;
      notifyListeners();

    _user =await _authenticationservices.signUp(email, password, userName);
    _isLoaded = false;
    notifyListeners();
    }catch(e){
      _isLoaded = false;
      notifyListeners();
      return false;
    }

    return true;
  }
   Future<bool> signIn(String email, String password)async{
    _user =await _authenticationservices.signIn(email, password);
    _isLoaded = false;
    notifyListeners();
    return true;
  }
  Future<void>signOut()async{
    await _authenticationservices.signOut();
    _user = null;
    notifyListeners();
  }

}