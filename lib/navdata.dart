import 'package:built_value/built_value.dart';

part 'navdata.g.dart';

abstract class NavData implements Built<NavData, NavDataBuilder> {
  int get chapter;
  String get book;

  NavData._();
  factory NavData([void Function(NavDataBuilder) updates]) = _$NavData;

}




