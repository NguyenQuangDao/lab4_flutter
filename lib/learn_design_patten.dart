// ignore: file_names
abstract class Employee {
  void work();
  // factory Employee(String type) {
  //   switch (type) {
  //     case 'programer':
  //       return HRManager();type
  //     default:
  //       return Programer();
  //   }
  // }
}

class HRManager implements Employee {
  @override
  void work() {
    print('hR');
  }
}

class Programer implements Employee {
  @override
  void work() {
    print('codeing an app');
  }
}

class FactoryMethod {
  static Employee getEmployee(String type) {
    switch (type) {
      case 'programer':
        return Programer();
      case 'hr':
        return HRManager();
      default:
        return Programer();
    }
  }
}
