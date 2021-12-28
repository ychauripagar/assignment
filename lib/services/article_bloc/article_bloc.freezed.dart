// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'article_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ArticleEventTearOff {
  const _$ArticleEventTearOff();

  _LoadArticleEvent loadArticles() {
    return _LoadArticleEvent();
  }
}

/// @nodoc
const $ArticleEvent = _$ArticleEventTearOff();

/// @nodoc
mixin _$ArticleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadArticles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadArticles,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadArticleEvent value) loadArticles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadArticleEvent value)? loadArticles,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleEventCopyWith<$Res> {
  factory $ArticleEventCopyWith(
          ArticleEvent value, $Res Function(ArticleEvent) then) =
      _$ArticleEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ArticleEventCopyWithImpl<$Res> implements $ArticleEventCopyWith<$Res> {
  _$ArticleEventCopyWithImpl(this._value, this._then);

  final ArticleEvent _value;
  // ignore: unused_field
  final $Res Function(ArticleEvent) _then;
}

/// @nodoc
abstract class _$LoadArticleEventCopyWith<$Res> {
  factory _$LoadArticleEventCopyWith(
          _LoadArticleEvent value, $Res Function(_LoadArticleEvent) then) =
      __$LoadArticleEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadArticleEventCopyWithImpl<$Res>
    extends _$ArticleEventCopyWithImpl<$Res>
    implements _$LoadArticleEventCopyWith<$Res> {
  __$LoadArticleEventCopyWithImpl(
      _LoadArticleEvent _value, $Res Function(_LoadArticleEvent) _then)
      : super(_value, (v) => _then(v as _LoadArticleEvent));

  @override
  _LoadArticleEvent get _value => super._value as _LoadArticleEvent;
}

/// @nodoc
class _$_LoadArticleEvent implements _LoadArticleEvent {
  _$_LoadArticleEvent();

  @override
  String toString() {
    return 'ArticleEvent.loadArticles()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadArticleEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadArticles,
  }) {
    return loadArticles();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadArticles,
    required TResult orElse(),
  }) {
    if (loadArticles != null) {
      return loadArticles();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadArticleEvent value) loadArticles,
  }) {
    return loadArticles(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadArticleEvent value)? loadArticles,
    required TResult orElse(),
  }) {
    if (loadArticles != null) {
      return loadArticles(this);
    }
    return orElse();
  }
}

abstract class _LoadArticleEvent implements ArticleEvent {
  factory _LoadArticleEvent() = _$_LoadArticleEvent;
}

/// @nodoc
class _$ArticleStateTearOff {
  const _$ArticleStateTearOff();

  _ArticleStateInitial initial() {
    return const _ArticleStateInitial();
  }

  _ArticleStateLoading loading() {
    return const _ArticleStateLoading();
  }

  _ArticleStateLoaded articleLoaded() {
    return const _ArticleStateLoaded();
  }
}

/// @nodoc
const $ArticleState = _$ArticleStateTearOff();

/// @nodoc
mixin _$ArticleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() articleLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? articleLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ArticleStateInitial value) initial,
    required TResult Function(_ArticleStateLoading value) loading,
    required TResult Function(_ArticleStateLoaded value) articleLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ArticleStateInitial value)? initial,
    TResult Function(_ArticleStateLoading value)? loading,
    TResult Function(_ArticleStateLoaded value)? articleLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleStateCopyWith<$Res> {
  factory $ArticleStateCopyWith(
          ArticleState value, $Res Function(ArticleState) then) =
      _$ArticleStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ArticleStateCopyWithImpl<$Res> implements $ArticleStateCopyWith<$Res> {
  _$ArticleStateCopyWithImpl(this._value, this._then);

  final ArticleState _value;
  // ignore: unused_field
  final $Res Function(ArticleState) _then;
}

/// @nodoc
abstract class _$ArticleStateInitialCopyWith<$Res> {
  factory _$ArticleStateInitialCopyWith(_ArticleStateInitial value,
          $Res Function(_ArticleStateInitial) then) =
      __$ArticleStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$ArticleStateInitialCopyWithImpl<$Res>
    extends _$ArticleStateCopyWithImpl<$Res>
    implements _$ArticleStateInitialCopyWith<$Res> {
  __$ArticleStateInitialCopyWithImpl(
      _ArticleStateInitial _value, $Res Function(_ArticleStateInitial) _then)
      : super(_value, (v) => _then(v as _ArticleStateInitial));

  @override
  _ArticleStateInitial get _value => super._value as _ArticleStateInitial;
}

/// @nodoc
class _$_ArticleStateInitial implements _ArticleStateInitial {
  const _$_ArticleStateInitial();

  @override
  String toString() {
    return 'ArticleState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ArticleStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() articleLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? articleLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ArticleStateInitial value) initial,
    required TResult Function(_ArticleStateLoading value) loading,
    required TResult Function(_ArticleStateLoaded value) articleLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ArticleStateInitial value)? initial,
    TResult Function(_ArticleStateLoading value)? loading,
    TResult Function(_ArticleStateLoaded value)? articleLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ArticleStateInitial implements ArticleState {
  const factory _ArticleStateInitial() = _$_ArticleStateInitial;
}

/// @nodoc
abstract class _$ArticleStateLoadingCopyWith<$Res> {
  factory _$ArticleStateLoadingCopyWith(_ArticleStateLoading value,
          $Res Function(_ArticleStateLoading) then) =
      __$ArticleStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$ArticleStateLoadingCopyWithImpl<$Res>
    extends _$ArticleStateCopyWithImpl<$Res>
    implements _$ArticleStateLoadingCopyWith<$Res> {
  __$ArticleStateLoadingCopyWithImpl(
      _ArticleStateLoading _value, $Res Function(_ArticleStateLoading) _then)
      : super(_value, (v) => _then(v as _ArticleStateLoading));

  @override
  _ArticleStateLoading get _value => super._value as _ArticleStateLoading;
}

/// @nodoc
class _$_ArticleStateLoading implements _ArticleStateLoading {
  const _$_ArticleStateLoading();

  @override
  String toString() {
    return 'ArticleState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ArticleStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() articleLoaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? articleLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ArticleStateInitial value) initial,
    required TResult Function(_ArticleStateLoading value) loading,
    required TResult Function(_ArticleStateLoaded value) articleLoaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ArticleStateInitial value)? initial,
    TResult Function(_ArticleStateLoading value)? loading,
    TResult Function(_ArticleStateLoaded value)? articleLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ArticleStateLoading implements ArticleState {
  const factory _ArticleStateLoading() = _$_ArticleStateLoading;
}

/// @nodoc
abstract class _$ArticleStateLoadedCopyWith<$Res> {
  factory _$ArticleStateLoadedCopyWith(
          _ArticleStateLoaded value, $Res Function(_ArticleStateLoaded) then) =
      __$ArticleStateLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ArticleStateLoadedCopyWithImpl<$Res>
    extends _$ArticleStateCopyWithImpl<$Res>
    implements _$ArticleStateLoadedCopyWith<$Res> {
  __$ArticleStateLoadedCopyWithImpl(
      _ArticleStateLoaded _value, $Res Function(_ArticleStateLoaded) _then)
      : super(_value, (v) => _then(v as _ArticleStateLoaded));

  @override
  _ArticleStateLoaded get _value => super._value as _ArticleStateLoaded;
}

/// @nodoc
class _$_ArticleStateLoaded implements _ArticleStateLoaded {
  const _$_ArticleStateLoaded();

  @override
  String toString() {
    return 'ArticleState.articleLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ArticleStateLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() articleLoaded,
  }) {
    return articleLoaded();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? articleLoaded,
    required TResult orElse(),
  }) {
    if (articleLoaded != null) {
      return articleLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ArticleStateInitial value) initial,
    required TResult Function(_ArticleStateLoading value) loading,
    required TResult Function(_ArticleStateLoaded value) articleLoaded,
  }) {
    return articleLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ArticleStateInitial value)? initial,
    TResult Function(_ArticleStateLoading value)? loading,
    TResult Function(_ArticleStateLoaded value)? articleLoaded,
    required TResult orElse(),
  }) {
    if (articleLoaded != null) {
      return articleLoaded(this);
    }
    return orElse();
  }
}

abstract class _ArticleStateLoaded implements ArticleState {
  const factory _ArticleStateLoaded() = _$_ArticleStateLoaded;
}
