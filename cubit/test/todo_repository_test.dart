import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:todoz_bloc/data/todo_repository.dart';
import 'package:todoz_bloc/domain/todo_entity.dart';
import 'mocks.mocks.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('TodoRepository', () {
    late TodoRepository todoRepository;
    late MockSharedPreferences mockSharedPreferences;

    setUp(() {
      mockSharedPreferences = MockSharedPreferences();
      todoRepository = TodoRepository(mockSharedPreferences);
    });

    test('저장된 할 일을 요청하면 저장된 할 일 목록을 반환한다', () async {
      // Given
      final todos = [
        TodoEntity.withId(id: '1', description: '테스트 할 일 1'),
        TodoEntity.withId(id: '2', description: '테스트 할 일 2'),
      ];
      when(mockSharedPreferences.getString('todos'))
      .thenReturn('[{"id":"1","description":"테스트 할 일 1"},{"id":"2","description":"테스트 할 일 2"}]');
      when(mockSharedPreferences.containsKey('todos'))
      .thenReturn(true);

      // When
      final result = await todoRepository.requestTodos().first;

      // Then
      expect(result, todos);
    });
  });
}
