import 'package:flutter/foundation.dart';
import 'navdata.dart';

//! Если состояние меняется и нужно это отслеживать, то можно использовать UnionState(freezed) в качестве value. Скорее всего это нужно для внешних данных
//! [https://youtu.be/4UePKj4vsK8?t=2889] [value] as [UnionState](freezed)
//* Конкретная схема подходит для обновления локальных данных на верстке. Не подходит для работы с внешними данными. Опционально [built_value].

//* Еще вариант когда в DataClass есть простые ValueNotifier-поля 
//* https://github.com/ScottS2017/valuenotifier_simplified/tree/master/lib

class NavDataValueNotifier extends ValueNotifier<NavData> {
  NavDataValueNotifier(NavData value) : super(value);

  void incriment(int counter) {
    print('incrim '+ super.value.hashCode.toString());
    var lastValue = value.rebuild((b) => b
      ..chapter = counter + 1);
    
    value = lastValue;  
    notifyListeners();
  }
}
