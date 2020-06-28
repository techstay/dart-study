/// 函数示例

// 简单函数体
double sum(double a, double b) => a + b;

// 一般函数
double multiply(double a, double b) {
  return a * b;
}

// 命名参数默认值
void sayHello({String name = 'yitian'}) {
  print(name);
}

// 位置参数默认值
void sayHello2([String name = 'yitian']) {
  print(name);
}

// 匿名函数
var sum2 = (int a, int b) => a + b;

// 扩展方法
extension MyExtention on String {
  void myExtension() {
    print('this is my extension');
  }
}

void main() {
  sayHello(name: 'yitian');
  sayHello2();
  print(sum2(1, 2));

  ''.myExtension();
}
