import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:tanda/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.log).existsSync(), isTrue);
    expect(File(Images.logo).existsSync(), isTrue);
  });
}
