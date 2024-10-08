import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

final class TodoEntity extends Equatable {
  final String id;
  final String description;

  TodoEntity({
    required this.description, required String id,
  }) : id = const Uuid().v4();

  TodoEntity.withId({
    required this.id,
    required this.description,
  });

  @override
  List<Object?> get props => [id, description];

  @override
  String toString() => 'Todo(id: $id, description: $description)';

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