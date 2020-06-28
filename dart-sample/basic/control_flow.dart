// 控制流

// 条件语句
void if_stmt() {
  var test = true;
  if (test) {
    print('this is true');
  } else {
    print('this is false');
  }
}

void switch_stmt() {
  var rank = 78;
  switch (rank ~/ 10) {
    case 10:
      print('满分');
      break;
    case 9:
      print('优秀');
      break;
    case 8:
      print('良好');
      break;
    default:
      print('其他');
  }
}

// 循环语句
void for_stmt() {
  var list = [1, 2, 34, 5];
  for (var i = 0; i < list.length; ++i) {
    print(list[i]);
  }

  // while语句
  var i = 0;
  while (i <= 2) {
    print('in while loop');
    ++i;
  }

  // do-while语句
  i = 0;
  do {
    print('in do while');
    i++;
  } while (i <= 2);
}

void main() {
  if_stmt();
  switch_stmt();
  for_stmt();
}
