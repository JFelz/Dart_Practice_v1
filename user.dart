import 'dart:core';

enum beingType{humanoid, aquatic, aerial, reptilian, feral}

class Customer {
  String? _firstName;
  String? _lastName;
  final livingType = beingType.humanoid;
  int? phoneNumber;
  String? email;

// Constructor
  Customer(this._firstName, this._lastName);

// Setter
  set setNumber(int num) => phoneNumber = num;
  set eMail(String em) => email = em;

// getter read-only
  String? get getName => _firstName;
  get getLivingType => livingType;
  int? get getNumber => phoneNumber;
  String? get getEmail => email;
  String? get full_name => '$_firstName $_lastName';

  // Method
  void details() {
    print('My name is $full_name');

    if(livingType == beingType.humanoid){
          print('I am human');
    } else print(livingType);

    var currentNum = this.phoneNumber;

    if (currentNum != null) {
      print('My number is: $phoneNumber');
    } else print('I dont have a phone number. Sorry!');
  }

}
