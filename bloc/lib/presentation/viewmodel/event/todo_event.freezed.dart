// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TodoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(TodoEntity todo) add,
    required TResult Function(String id) remove,
    required TResult Function() clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(TodoEntity todo)? add,
    TResult? Function(String id)? remove,
    TResult? Function()? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(TodoEntity todo)? add,
    TResult Function(String id)? remove,
    TResult Function()? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(AddTodo value) add,
    required TResult Function(RemoveTodo value) remove,
    required TResult Function(ClearTodos value) clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(AddTodo value)? add,
    TResult? Function(RemoveTodo value)? remove,
    TResult? Function(ClearTodos value)? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddTodo value)? add,
    TResult Function(RemoveTodo value)? remove,
    TResult Function(ClearTodos value)? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoEventCopyWith<$Res> {
  factory $TodoEventCopyWith(TodoEvent value, $Res Function(TodoEvent) then) =
      _$TodoEventCopyWithImpl<$Res, TodoEvent>;
}

/// @nodoc
class _$TodoEventCopyWithImpl<$Res, $Val extends TodoEvent>
    implements $TodoEventCopyWith<$Res> {
  _$TodoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializeImplCopyWith<$Res> {
  factory _$$InitializeImplCopyWith(
          _$InitializeImpl value, $Res Function(_$InitializeImpl) then) =
      __$$InitializeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$InitializeImpl>
    implements _$$InitializeImplCopyWith<$Res> {
  __$$InitializeImplCopyWithImpl(
      _$InitializeImpl _value, $Res Function(_$InitializeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitializeImpl implements Initialize {
  const _$InitializeImpl();

  @override
  String toString() {
    return 'TodoEvent.initialize()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(TodoEntity todo) add,
    required TResult Function(String id) remove,
    required TResult Function() clear,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(TodoEntity todo)? add,
    TResult? Function(String id)? remove,
    TResult? Function()? clear,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(TodoEntity todo)? add,
    TResult Function(String id)? remove,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(AddTodo value) add,
    required TResult Function(RemoveTodo value) remove,
    required TResult Function(ClearTodos value) clear,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(AddTodo value)? add,
    TResult? Function(RemoveTodo value)? remove,
    TResult? Function(ClearTodos value)? clear,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddTodo value)? add,
    TResult Function(RemoveTodo value)? remove,
    TResult Function(ClearTodos value)? clear,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements TodoEvent {
  const factory Initialize() = _$InitializeImpl;
}

/// @nodoc
abstract class _$$AddTodoImplCopyWith<$Res> {
  factory _$$AddTodoImplCopyWith(
          _$AddTodoImpl value, $Res Function(_$AddTodoImpl) then) =
      __$$AddTodoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TodoEntity todo});
}

/// @nodoc
class __$$AddTodoImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$AddTodoImpl>
    implements _$$AddTodoImplCopyWith<$Res> {
  __$$AddTodoImplCopyWithImpl(
      _$AddTodoImpl _value, $Res Function(_$AddTodoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = null,
  }) {
    return _then(_$AddTodoImpl(
      null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as TodoEntity,
    ));
  }
}

/// @nodoc

class _$AddTodoImpl implements AddTodo {
  const _$AddTodoImpl(this.todo);

  @override
  final TodoEntity todo;

  @override
  String toString() {
    return 'TodoEvent.add(todo: $todo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTodoImpl &&
            (identical(other.todo, todo) || other.todo == todo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTodoImplCopyWith<_$AddTodoImpl> get copyWith =>
      __$$AddTodoImplCopyWithImpl<_$AddTodoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(TodoEntity todo) add,
    required TResult Function(String id) remove,
    required TResult Function() clear,
  }) {
    return add(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(TodoEntity todo)? add,
    TResult? Function(String id)? remove,
    TResult? Function()? clear,
  }) {
    return add?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(TodoEntity todo)? add,
    TResult Function(String id)? remove,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(AddTodo value) add,
    required TResult Function(RemoveTodo value) remove,
    required TResult Function(ClearTodos value) clear,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(AddTodo value)? add,
    TResult? Function(RemoveTodo value)? remove,
    TResult? Function(ClearTodos value)? clear,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddTodo value)? add,
    TResult Function(RemoveTodo value)? remove,
    TResult Function(ClearTodos value)? clear,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class AddTodo implements TodoEvent {
  const factory AddTodo(final TodoEntity todo) = _$AddTodoImpl;

  TodoEntity get todo;
  @JsonKey(ignore: true)
  _$$AddTodoImplCopyWith<_$AddTodoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveTodoImplCopyWith<$Res> {
  factory _$$RemoveTodoImplCopyWith(
          _$RemoveTodoImpl value, $Res Function(_$RemoveTodoImpl) then) =
      __$$RemoveTodoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$RemoveTodoImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$RemoveTodoImpl>
    implements _$$RemoveTodoImplCopyWith<$Res> {
  __$$RemoveTodoImplCopyWithImpl(
      _$RemoveTodoImpl _value, $Res Function(_$RemoveTodoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$RemoveTodoImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveTodoImpl implements RemoveTodo {
  const _$RemoveTodoImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'TodoEvent.remove(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveTodoImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveTodoImplCopyWith<_$RemoveTodoImpl> get copyWith =>
      __$$RemoveTodoImplCopyWithImpl<_$RemoveTodoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(TodoEntity todo) add,
    required TResult Function(String id) remove,
    required TResult Function() clear,
  }) {
    return remove(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(TodoEntity todo)? add,
    TResult? Function(String id)? remove,
    TResult? Function()? clear,
  }) {
    return remove?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(TodoEntity todo)? add,
    TResult Function(String id)? remove,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(AddTodo value) add,
    required TResult Function(RemoveTodo value) remove,
    required TResult Function(ClearTodos value) clear,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(AddTodo value)? add,
    TResult? Function(RemoveTodo value)? remove,
    TResult? Function(ClearTodos value)? clear,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddTodo value)? add,
    TResult Function(RemoveTodo value)? remove,
    TResult Function(ClearTodos value)? clear,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class RemoveTodo implements TodoEvent {
  const factory RemoveTodo(final String id) = _$RemoveTodoImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$RemoveTodoImplCopyWith<_$RemoveTodoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearTodosImplCopyWith<$Res> {
  factory _$$ClearTodosImplCopyWith(
          _$ClearTodosImpl value, $Res Function(_$ClearTodosImpl) then) =
      __$$ClearTodosImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearTodosImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$ClearTodosImpl>
    implements _$$ClearTodosImplCopyWith<$Res> {
  __$$ClearTodosImplCopyWithImpl(
      _$ClearTodosImpl _value, $Res Function(_$ClearTodosImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearTodosImpl implements ClearTodos {
  const _$ClearTodosImpl();

  @override
  String toString() {
    return 'TodoEvent.clear()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearTodosImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(TodoEntity todo) add,
    required TResult Function(String id) remove,
    required TResult Function() clear,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(TodoEntity todo)? add,
    TResult? Function(String id)? remove,
    TResult? Function()? clear,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(TodoEntity todo)? add,
    TResult Function(String id)? remove,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(AddTodo value) add,
    required TResult Function(RemoveTodo value) remove,
    required TResult Function(ClearTodos value) clear,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(AddTodo value)? add,
    TResult? Function(RemoveTodo value)? remove,
    TResult? Function(ClearTodos value)? clear,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddTodo value)? add,
    TResult Function(RemoveTodo value)? remove,
    TResult Function(ClearTodos value)? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class ClearTodos implements TodoEvent {
  const factory ClearTodos() = _$ClearTodosImpl;
}
