import 'dart:ffi';

class LogInData {
  
  var dataLogin = List.generate(1, (i) => ["host","kiel"], growable: false);

  bool check(String email, String pw) {
    for(int i = 0; i <= dataLogin.length; i++){
      if(dataLogin.contains([email,pw])){
        return true;
      }
      return false;
    }
  }
}
