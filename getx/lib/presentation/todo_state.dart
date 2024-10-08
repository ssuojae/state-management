// enum은 이미 == 연산자를 오버라이드하여 값을 비교할 수 있기 때문에 Equatable이나 Freezed 패키지를 추가할 필요 없음
enum TodoState { loading, loaded, error }