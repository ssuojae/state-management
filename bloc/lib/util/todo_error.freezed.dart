// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TodoError {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) fetchError,
    required TResult Function(String message) saveError,
    required TResult Function(String message) clearError,
    required TResult Function(String message) loadError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? fetchError,
    TResult? Function(String message)? saveError,
    TResult? Function(String message)? clearError,
    TResult? Function(String message)? loadError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? fetchError,
    TResult Function(String message)? saveError,
    TResult Function(String message)? clearError,
    TResult Function(String message)? loadError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchError value) fetchError,
    required TResult Function(SaveError value) saveError,
    required TResult Function(ClearError value) clearError,
    required TResult Function(LoadError value) loadError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchError value)? fetchError,
    TResult? Function(SaveError value)? saveError,
    TResult? Function(ClearError value)? clearError,
    TResult? Function(LoadError value)? loadError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchError value)? fetchError,
    TResult Function(SaveError value)? saveError,
    TResult Function(ClearError value)? clearError,
    TResult Function(LoadError value)? loadError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoErrorCopyWith<TodoError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoErrorCopyWith<$Res> {
  factory $TodoErrorCopyWith(TodoError value, $Res Function(TodoError) then) =
      _$TodoErrorCopyWithImpl<$Res, TodoError>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$TodoErrorCopyWithImpl<$Res, $Val extends TodoError>
    implements $TodoErrorCopyWith<$Res> {
  _$TodoErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchErrorImplCopyWith<$Res>
    implements $TodoErrorCopyWith<$Res> {
  factory _$$FetchErrorImplCopyWith(
          _$FetchErrorImpl value, $Res Function(_$FetchErrorImpl) then) =
      __$$FetchErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FetchErrorImplCopyWithImpl<$Res>
    extends _$TodoErrorCopyWithImpl<$Res, _$FetchErrorImpl>
    implements _$$FetchErrorImplCopyWith<$Res> {
  __$$FetchErrorImplCopyWithImpl(
      _$FetchErrorImpl _value, $Res Function(_$FetchErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FetchErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchErrorImpl implements FetchError {
  const _$FetchErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'TodoError.fetchError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchErrorImplCopyWith<_$FetchErrorImpl> get copyWith =>
      __$$FetchErrorImplCopyWithImpl<_$FetchErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) fetchError,
    required TResult Function(String message) saveError,
    required TResult Function(String message) clearError,
    required TResult Function(String message) loadError,
  }) {
    return fetchError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? fetchError,
    TResult? Function(String message)? saveError,
    TResult? Function(String message)? clearError,
    TResult? Function(String message)? loadError,
  }) {
    return fetchError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? fetchError,
    TResult Function(String message)? saveError,
    TResult Function(String message)? clearError,
    TResult Function(String message)? loadError,
    required TResult orElse(),
  }) {
    if (fetchError != null) {
      return fetchError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchError value) fetchError,
    required TResult Function(SaveError value) saveError,
    required TResult Function(ClearError value) clearError,
    required TResult Function(LoadError value) loadError,
  }) {
    return fetchError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchError value)? fetchError,
    TResult? Function(SaveError value)? saveError,
    TResult? Function(ClearError value)? clearError,
    TResult? Function(LoadError value)? loadError,
  }) {
    return fetchError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchError value)? fetchError,
    TResult Function(SaveError value)? saveError,
    TResult Function(ClearError value)? clearError,
    TResult Function(LoadError value)? loadError,
    required TResult orElse(),
  }) {
    if (fetchError != null) {
      return fetchError(this);
    }
    return orElse();
  }
}

abstract class FetchError implements TodoError {
  const factory FetchError(final String message) = _$FetchErrorImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$FetchErrorImplCopyWith<_$FetchErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveErrorImplCopyWith<$Res>
    implements $TodoErrorCopyWith<$Res> {
  factory _$$SaveErrorImplCopyWith(
          _$SaveErrorImpl value, $Res Function(_$SaveErrorImpl) then) =
      __$$SaveErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SaveErrorImplCopyWithImpl<$Res>
    extends _$TodoErrorCopyWithImpl<$Res, _$SaveErrorImpl>
    implements _$$SaveErrorImplCopyWith<$Res> {
  __$$SaveErrorImplCopyWithImpl(
      _$SaveErrorImpl _value, $Res Function(_$SaveErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SaveErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SaveErrorImpl implements SaveError {
  const _$SaveErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'TodoError.saveError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveErrorImplCopyWith<_$SaveErrorImpl> get copyWith =>
      __$$SaveErrorImplCopyWithImpl<_$SaveErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) fetchError,
    required TResult Function(String message) saveError,
    required TResult Function(String message) clearError,
    required TResult Function(String message) loadError,
  }) {
    return saveError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? fetchError,
    TResult? Function(String message)? saveError,
    TResult? Function(String message)? clearError,
    TResult? Function(String message)? loadError,
  }) {
    return saveError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? fetchError,
    TResult Function(String message)? saveError,
    TResult Function(String message)? clearError,
    TResult Function(String message)? loadError,
    required TResult orElse(),
  }) {
    if (saveError != null) {
      return saveError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchError value) fetchError,
    required TResult Function(SaveError value) saveError,
    required TResult Function(ClearError value) clearError,
    required TResult Function(LoadError value) loadError,
  }) {
    return saveError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchError value)? fetchError,
    TResult? Function(SaveError value)? saveError,
    TResult? Function(ClearError value)? clearError,
    TResult? Function(LoadError value)? loadError,
  }) {
    return saveError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchError value)? fetchError,
    TResult Function(SaveError value)? saveError,
    TResult Function(ClearError value)? clearError,
    TResult Function(LoadError value)? loadError,
    required TResult orElse(),
  }) {
    if (saveError != null) {
      return saveError(this);
    }
    return orElse();
  }
}

abstract class SaveError implements TodoError {
  const factory SaveError(final String message) = _$SaveErrorImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$SaveErrorImplCopyWith<_$SaveErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearErrorImplCopyWith<$Res>
    implements $TodoErrorCopyWith<$Res> {
  factory _$$ClearErrorImplCopyWith(
          _$ClearErrorImpl value, $Res Function(_$ClearErrorImpl) then) =
      __$$ClearErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ClearErrorImplCopyWithImpl<$Res>
    extends _$TodoErrorCopyWithImpl<$Res, _$ClearErrorImpl>
    implements _$$ClearErrorImplCopyWith<$Res> {
  __$$ClearErrorImplCopyWithImpl(
      _$ClearErrorImpl _value, $Res Function(_$ClearErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ClearErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClearErrorImpl implements ClearError {
  const _$ClearErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'TodoError.clearError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClearErrorImplCopyWith<_$ClearErrorImpl> get copyWith =>
      __$$ClearErrorImplCopyWithImpl<_$ClearErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) fetchError,
    required TResult Function(String message) saveError,
    required TResult Function(String message) clearError,
    required TResult Function(String message) loadError,
  }) {
    return clearError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? fetchError,
    TResult? Function(String message)? saveError,
    TResult? Function(String message)? clearError,
    TResult? Function(String message)? loadError,
  }) {
    return clearError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? fetchError,
    TResult Function(String message)? saveError,
    TResult Function(String message)? clearError,
    TResult Function(String message)? loadError,
    required TResult orElse(),
  }) {
    if (clearError != null) {
      return clearError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchError value) fetchError,
    required TResult Function(SaveError value) saveError,
    required TResult Function(ClearError value) clearError,
    required TResult Function(LoadError value) loadError,
  }) {
    return clearError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchError value)? fetchError,
    TResult? Function(SaveError value)? saveError,
    TResult? Function(ClearError value)? clearError,
    TResult? Function(LoadError value)? loadError,
  }) {
    return clearError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchError value)? fetchError,
    TResult Function(SaveError value)? saveError,
    TResult Function(ClearError value)? clearError,
    TResult Function(LoadError value)? loadError,
    required TResult orElse(),
  }) {
    if (clearError != null) {
      return clearError(this);
    }
    return orElse();
  }
}

abstract class ClearError implements TodoError {
  const factory ClearError(final String message) = _$ClearErrorImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ClearErrorImplCopyWith<_$ClearErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadErrorImplCopyWith<$Res>
    implements $TodoErrorCopyWith<$Res> {
  factory _$$LoadErrorImplCopyWith(
          _$LoadErrorImpl value, $Res Function(_$LoadErrorImpl) then) =
      __$$LoadErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LoadErrorImplCopyWithImpl<$Res>
    extends _$TodoErrorCopyWithImpl<$Res, _$LoadErrorImpl>
    implements _$$LoadErrorImplCopyWith<$Res> {
  __$$LoadErrorImplCopyWithImpl(
      _$LoadErrorImpl _value, $Res Function(_$LoadErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LoadErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadErrorImpl implements LoadError {
  const _$LoadErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'TodoError.loadError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadErrorImplCopyWith<_$LoadErrorImpl> get copyWith =>
      __$$LoadErrorImplCopyWithImpl<_$LoadErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) fetchError,
    required TResult Function(String message) saveError,
    required TResult Function(String message) clearError,
    required TResult Function(String message) loadError,
  }) {
    return loadError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? fetchError,
    TResult? Function(String message)? saveError,
    TResult? Function(String message)? clearError,
    TResult? Function(String message)? loadError,
  }) {
    return loadError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? fetchError,
    TResult Function(String message)? saveError,
    TResult Function(String message)? clearError,
    TResult Function(String message)? loadError,
    required TResult orElse(),
  }) {
    if (loadError != null) {
      return loadError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchError value) fetchError,
    required TResult Function(SaveError value) saveError,
    required TResult Function(ClearError value) clearError,
    required TResult Function(LoadError value) loadError,
  }) {
    return loadError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchError value)? fetchError,
    TResult? Function(SaveError value)? saveError,
    TResult? Function(ClearError value)? clearError,
    TResult? Function(LoadError value)? loadError,
  }) {
    return loadError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchError value)? fetchError,
    TResult Function(SaveError value)? saveError,
    TResult Function(ClearError value)? clearError,
    TResult Function(LoadError value)? loadError,
    required TResult orElse(),
  }) {
    if (loadError != null) {
      return loadError(this);
    }
    return orElse();
  }
}

abstract class LoadError implements TodoError {
  const factory LoadError(final String message) = _$LoadErrorImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$LoadErrorImplCopyWith<_$LoadErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
