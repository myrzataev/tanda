import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:tanda/resources/resources.dart';

void main() {
  test('svg_images assets test', () {
    expect(File(SvgImages.vector).existsSync(), isTrue);
    expect(File(SvgImages.add).existsSync(), isTrue);
    expect(File(SvgImages.home).existsSync(), isTrue);
    expect(File(SvgImages.key).existsSync(), isTrue);
    expect(File(SvgImages.logo).existsSync(), isTrue);
    expect(File(SvgImages.profile).existsSync(), isTrue);
    expect(File(SvgImages.secondVector).existsSync(), isTrue);
    expect(File(SvgImages.sms).existsSync(), isTrue);
  });
}
