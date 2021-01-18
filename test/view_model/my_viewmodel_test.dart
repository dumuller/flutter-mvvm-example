import 'package:apontamento/model/my_model.dart';
import 'package:apontamento/view_model/my_viewmodel.dart';
import 'package:flutter_test/flutter_test.dart';

main(){
  final loginTest = MyViewModel();
  final login = MyModel();
  group("teste completo de login", (){
    test("teste de login com sucesso", () async {
      login.name = "eduardo";
      login.password = "123";
      final result = await loginTest.login(login);
      expect(result, isTrue);
    });

    test("teste de login com falha", () async {
      login.name = "eduardo";
      login.password = "123345";
      final result = await loginTest.login(login);
      expect(result, isFalse);
    });

  });
}