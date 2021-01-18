import 'package:apontamento/model/my_model.dart';

class MyRepository {
  Future<bool> loginIsValid(MyModel model) async {
    await Future.delayed(Duration(seconds: 2));
    return model.name == "eduardo" && model.password == "123";
  }
}