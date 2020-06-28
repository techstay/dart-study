/*
基本类型
 */

// 行注释

// 基本类型

// 数值类型
var i = 7;
var d = 10.7;
var oct = 03411234;
var hex = 0xcafe;
var exp = 1e5;

// 字符串
var s = '1234';

// 集合类型
var list = <Object>[1, 2, 3, 4];
var set = <int>{1, 2, 3, 4};
var map = <int, int>{1: 1, 2: 2};

// 常量
final f = 100;
const c = 100;

// 也可以显式指定变量类型，就和C语言等一样
String ss = '555';
List<int> list2 = <int>[1, 2, 3, 4];

// 布尔值
var trueValue = true;
var falseValue = false;

// 操作符

// 级联操作符，可以省去多个相同的对象上下文
class A {
  int a, b, c;

  @override
  String toString() => '{a=$a,b=$b,c=$c}';
}

void cascade_operator_sample() {
  var aa = A();
  aa
    ..a = 1
    ..b = 2
    ..c = 3;

  print(aa);
}

void main(List<String> args) {
  cascade_operator_sample();
}
