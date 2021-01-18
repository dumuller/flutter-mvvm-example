import 'dart:async';

import 'package:apontamento/model/my_model.dart';
import 'package:apontamento/repository/my_repository.dart';

class MyViewModel {
  MyRepository repository = MyRepository();
  final _isLoginIn = StreamController<MyModel>();
  Sink get isLoginIn => _isLoginIn.sink;
  Stream<bool> get isLoginOut => _isLoginIn.stream.asyncMap(login);

  Future<bool> login(MyModel model){
    return repository.loginIsValid(model);
  }

  dispose(){
    _isLoginIn.close();
  }
}