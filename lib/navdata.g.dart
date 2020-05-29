// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navdata.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NavData extends NavData {
  @override
  final int chapter;
  @override
  final String book;

  factory _$NavData([void Function(NavDataBuilder) updates]) =>
      (new NavDataBuilder()..update(updates)).build();

  _$NavData._({this.chapter, this.book}) : super._() {
    if (chapter == null) {
      throw new BuiltValueNullFieldError('NavData', 'chapter');
    }
    if (book == null) {
      throw new BuiltValueNullFieldError('NavData', 'book');
    }
  }

  @override
  NavData rebuild(void Function(NavDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NavDataBuilder toBuilder() => new NavDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NavData && chapter == other.chapter && book == other.book;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, chapter.hashCode), book.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NavData')
          ..add('chapter', chapter)
          ..add('book', book))
        .toString();
  }
}

class NavDataBuilder implements Builder<NavData, NavDataBuilder> {
  _$NavData _$v;

  int _chapter;
  int get chapter => _$this._chapter;
  set chapter(int chapter) => _$this._chapter = chapter;

  String _book;
  String get book => _$this._book;
  set book(String book) => _$this._book = book;

  NavDataBuilder();

  NavDataBuilder get _$this {
    if (_$v != null) {
      _chapter = _$v.chapter;
      _book = _$v.book;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NavData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NavData;
  }

  @override
  void update(void Function(NavDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NavData build() {
    final _$result = _$v ?? new _$NavData._(chapter: chapter, book: book);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
