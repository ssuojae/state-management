// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TodoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<TodoEntity> todos) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<TodoEntity> todos)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<TodoEntity> todos)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoLoading value) loading,
    required TResult Function(TodoLoaded value) loaded,
    required TResult Function(TodoErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoLoading value)? loading,
    TResult? Function(TodoLoaded value)? loaded,
    TResult? Function(TodoErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoLoading value)? loading,
    TResult Function(TodoLoaded value)? loaded,
    TResult Function(TodoErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res, TodoState>;
}

/// @nodoc
class _$TodoStateCopyWithImpl<$Res, $Val extends TodoState>
    implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TodoLoadingImplCopyWith<$Res> {
  factory _$$TodoLoadingImplCopyWith(
          _$TodoLoadingImpl value, $Res Function(_$TodoLoadingImpl) then) =
      __$$TodoLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TodoLoadingImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$TodoLoadingImpl>
    implements _$$TodoLoadingImplCopyWith<$Res> {
  __$$TodoLoadingImplCopyWithImpl(
      _$TodoLoadingImpl _value, $Res Function(_$TodoLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TodoLoadingImpl implements TodoLoading {
  const _$TodoLoadingImpl();

  @override
  String toString() {
    return 'TodoState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TodoLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<TodoEntity> todos) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<TodoEntity> todos)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<TodoEntity> todos)? loaded,
    TResult Function(String message)? error,
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
    required TResult Function(TodoLoading value) loading,
    required TResult Function(TodoLoaded value) loaded,
    required TResult Function(TodoErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoLoading value)? loading,
    TResult? Function(TodoLoaded value)? loaded,
    TResult? Function(TodoErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoLoading value)? loading,
    TResult Function(TodoLoaded value)? loaded,
    TResult Function(TodoErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TodoLoading implements TodoState {
  const factory TodoLoading() = _$TodoLoadingImpl;
}

/// @nodoc
abstract class _$$TodoLoadedImplCopyWith<$Res> {
  factory _$$TodoLoadedImplCopyWith(
          _$TodoLoadedImpl value, $Res Function(_$TodoLoadedImpl) then) =
      __$$TodoLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TodoEntity> todos});
}

/// @nodoc
class __$$TodoLoadedImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$TodoLoadedImpl>
    implements _$$TodoLoadedImplCopyWith<$Res> {
  __$$TodoLoadedImplCopyWithImpl(
      _$TodoLoadedImpl _value, $Res Function(_$TodoLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
  }) {
    return _then(_$TodoLoadedImpl(
      null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoEntity>,
    ));
  }
}

/// @nodoc

class _$TodoLoadedImpl implements TodoLoaded {
  const _$TodoLoadedImpl(final List<TodoEntity> todos) : _todos = todos;

  final List<TodoEntity> _todos;
  @override
  List<TodoEntity> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  String toString() {
    return 'TodoState.loaded(todos: $todos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoLoadedImpl &&
            const DeepCollectionEquality().equals(other._todos, _todos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_todos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoLoadedImplCopyWith<_$TodoLoadedImpl> get copyWith =>
      __$$TodoLoadedImplCopyWithImpl<_$TodoLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<TodoEntity> todos) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(todos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<TodoEntity> todos)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<TodoEntity> todos)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoLoading value) loading,
    required TResult Function(TodoLoaded value) loaded,
    required TResult Function(TodoErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoLoading value)? loading,
    TResult? Function(TodoLoaded value)? loaded,
    TResult? Function(TodoErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoLoading value)? loading,
    TResult Function(TodoLoaded value)? loaded,
    TResult Function(TodoErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class TodoLoaded implements TodoState {
  const factory TodoLoaded(final List<TodoEntity> todos) = _$TodoLoadedImpl;

  List<TodoEntity> get todos;
  @JsonKey(ignore: true)
  _$$TodoLoadedImplCopyWith<_$TodoLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TodoErrorStateImplCopyWith<$Res> {
  factory _$$TodoErrorStateImplCopyWith(_$TodoErrorStateImpl value,
          $Res Function(_$TodoErrorStateImpl) then) =
      __$$TodoErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$TodoErrorStateImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$TodoErrorStateImpl>
    implements _$$TodoErrorStateImplCopyWith<$Res> {
  __$$TodoErrorStateImplCopyWithImpl(
      _$TodoErrorStateImpl _value, $Res Function(_$TodoErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$TodoErrorStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TodoErrorStateImpl implements TodoErrorState {
  const _$TodoErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'TodoState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoErrorStateImplCopyWith<_$TodoErrorStateImpl> get copyWith =>
      __$$TodoErrorStateImplCopyWithImpl<_$TodoErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<TodoEntity> todos) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<TodoEntity> todos)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<TodoEntity> todos)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoLoading value) loading,
    required TResult Function(TodoLoaded value) loaded,
    required TResult Function(TodoErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoLoading value)? loading,
    TResult? Function(TodoLoaded value)? loaded,
    TResult? Function(TodoErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoLoading value)? loading,
    TResult Function(TodoLoaded value)? loaded,
    TResult Function(TodoErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TodoErrorState implements TodoState {
  const factory TodoErrorState(final String message) = _$TodoErrorStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$TodoErrorStateImplCopyWith<_$TodoErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
