

class LJValidate{

  static String? validateEmail(String? value){
    if(value == null || value.isEmpty){
      return 'Email is empty';
    }
  }

  static String? validatePassword(String? value){
    if(value == null || value.isEmpty){
      return 'Password is empty';
    }
    if(value.length <6){
      return 'Password must be at least 6 characters';
    }
  }

}
