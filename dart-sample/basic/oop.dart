// 面向对象编程

// 抽象基类

abstract class Animal {
  String name;

  void speak();
}

// 子类
class Dog extends Animal {
  @override
  void speak() {
    print('wow wow');
  }
}

class Cat extends Animal {
  String nickname;
  int id;

  // 静态变量，在所有类实例之间共享
  static int catCount = 0;

  // 静态函数，可以直接在类上调用，无需类实例
  static void printCatCount() => print('Cat count is $catCount');

  // 命名构造函数，调用的时候要使用全名
  Cat.fromName(String nickname) : this(nickname, 0);

  // 语法糖，相当于在函数体中赋值
  Cat(this.nickname, this.id) {
    catCount += 1;
  }

  @override
  void speak() {
    print('miao maio');
  }
}

class Rectangle {
  String _name;
  double width, height;

  // setter 和 getter
  double get area => width * height;

  set name(String name) => _name = name;
}

// 枚举类
enum TrafficLight { red, blue, yellow }

// mixin，混合多个类的实现

// 如果想让mixin可以作为普通类使用，使用class关键字而不是mixin
mixin Problem1 {
  int id = 1;

  void problem1() => print('in problem1: $id');
}

class Problem2 {
  int id = 2;

  void problem2() => print('in problem2: $id');
}

class Problem with Problem1, Problem2 {
  void problem() {
    print('$id');
    problem1();
    problem2();
  }
}

void main() {
  var problem = Problem();
  problem.problem();
  // 注意，mixin不会影响正常的类继承结构
  assert(problem.runtimeType != Problem1);
}
