import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:todo_list/services/authentication_services.dart';

class AuthenticationProvider extends ChangeNotifier{
  User? _user;
  User? get user => _user;

  Authenticationservices _authenticationservices = Authenticationservices();

  AuthenticationProvider(){
    _user = _authenticationservices.currentUser;
  }

  Future<void> signUp(String email, String password, String userName)async{
    _user =await _authenticationservices.signUp(email, password, userName);
    notifyListeners();
  }
   Future<void> signIn(String email, String password)async{
    _user =await _authenticationservices.signIn(email, password);
    notifyListeners();
  }
  Future<void>signOut()async{
    await _authenticationservices.signOut();
    _user = null;
    notifyListeners();
  }

}