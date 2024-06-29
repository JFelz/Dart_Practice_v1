import 'dart:core';

class Phone {
  void TurnOn(){
    print('I am on!');
    print('Who do you want to call?');
  }
}

mixin PhoneQuantity {
  int missed = 25;

  void shareHowMany(){
    print('You have $missed missed calls');
  }
}

class SmartPhone extends Phone with PhoneQuantity {
  void TurnOn() {
    super.TurnOn();
    print('I now have Social Media');

    shareHowMany();
  }
}

//abstract
abstract class model {
  void name();
  void make();
}

class Android extends model {
  @override
  void name() {
    print('Samsung Galaxy');
  }

  @override
  void make() {
    print('TX11');
  }
}

class IPhone extends model {
  @override
  void name() {
    print('Apple Iphone');
  }

  @override
  void make() {
    print('15 Pro Max');
  }
}
