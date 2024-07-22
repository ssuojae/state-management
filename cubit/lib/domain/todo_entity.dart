import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';

@immutable
final class TodoEntity extends Equatable {
  final String id;
  final String description;

  TodoEntity({
    required this.description, required String id,
  }) : id = const Uuid().v4();

  const TodoEntity.withId({
    required this.id,
    required this.description,
  });

  @override
  List<Object?> get props => [id, description];

  factory TodoEntity.fromJson(Map<String, dynamic> json) {
    return TodoEntity.withId(
      id: json['id'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'description': description,
    };
  }
}