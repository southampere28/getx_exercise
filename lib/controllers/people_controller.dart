import '../models/people.dart';
import 'package:get/get.dart';

class PeopleController extends GetxController {
  var people = People(name: "pramudya", age: 21).obs;

  changeToUppercase() {
    people.update((_) {
      people.value.name = people.value.name.toUpperCase();
    });
  }
}
