import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_error.freezed.dart';

@freezed
class TodoError with _$TodoError {
  const factory TodoError.fetchError(String message) = FetchError;
  const factory TodoError.saveError(String message) = SaveError;
  const factory TodoError.clearError(String message) = ClearError;
  const factory TodoError.loadError(String message) = LoadError;
}