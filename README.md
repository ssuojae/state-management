## 상태관리 비교 프로젝트

<br/>

#### 상태관리 패턴을 이용한 todo list 구현

<br/>

#### 1. 의존성 다이어그램 - Cubit

<img src="https://github.com/user-attachments/assets/a85d535f-24bd-4406-89bf-bb371cfc03a9" width="700">

<br/>
<br/>

#### 2. 의존성 다이어그램 - Bloc

<img src="https://github.com/user-attachments/assets/f91b9550-5013-4011-937d-9e8ea9da8c49" width="700">

<br/>
<br/>

#### 3. 의존성 다이어그램 - GetX

<img src="https://github.com/user-attachments/assets/9e07bc43-4455-4b1c-a0bd-f2c9bc90ad2d" width="700">



<br/>



<br/>

#### Cubit 과 Bloc의 차이
- 가장 주요한 차이는 뷰에서 발생하는 이벤트와 뷰모델 내부 로직 메서드의 맵핑 여부였습니다.
- Cubit에서는 뷰모델(todo_cubit) 메서드를 직접적으로 뷰에서 사용하는 구조입니다.
- Bloc에서는 이벤트 객체를 정의하여 뷰에서 이벤트를 발생하면 뷰모델(todo_bloc)에서는 내부 뷰모델 로직과 서로 맵핑하는 관계를 가지고 있었습니다.
- 구현해본 결과 사이즈가 작은 프로젝트에서는 직관성을 위해 Cubit을, 사이즈가 큰 프로젝트에서는 뷰와 뷰모델간의 관계를 느슨하게 하는 bloc패턴이 더 좋다고 생각되었습니다.

<br/>

#### 피라미드 둠 최대한 피해보기

- UI 코드를 작성하면서 선언형 UI프레임워크 특성상 피라미드둠이 심해져 가독성이 떨어진다는 생각을 했습니다.
- 가독성 문제 해결을 위해 뷰를 `inputSection`, `TodoList` 두 섹션으로 나누어 코드를 작성한 후 컴포지셔닝을 진행했습니다.

<br/>

#### `broadcast` 메서드를 이용해 레포지토리 메서드 재사용성 높이기
- 다트의 `Stream` 디폴트값은 콜드옵저버블처럼 구독자마다 별개의 스트림이 생깁니다.
- `broadcast`메서드를 사용하면 핫옵저버블처럼 구독자에게 동일한 데이터 스트림을 흘러보낼 수 있습니다.
- 직접적으로 I/O작업을 하는 메서드(`_loadTodos`)는 `Future`를 통해 외부와의 연결을 차단하고, 일단 데이터가 로컬로 들어오면 스트림 `broadcast` 메서드를 통해 하나의 레포지토리, 더 나아가 도메인에 있는 하나의 레포지토리 인터페이스 메서드를 여러 뷰모델들이 공유할 수 있도록 코드를 작성했습니다.

<br/>

#### `freezed` 패키지를 이용해 간결하게 모델 정의하기
- 모델을 정의할 때 불변객체에 있어 반복된 작업을 줄이기 위해 `==` 연산자 재정의, `hash code`, `copy with` 메서드를 적어주게 되면 모델을 선언할 때마다 코드양이 많아지고 작업이 반복되었습니다.
- `freezed` 패키지를 이용하여 반복적인 작업을 간소화하고 개발자가 직접 작성하는 코드양 또한 줄일 수 있었습니다.

<br/>

#### Mokito 패키지를 이용해 유닛테스트 작성
- `shared-preference` 는 디스크 저장 패키지로 유닛테스트 작성을 위해서는 mock이 필요했습니다.
- `mokito` 패키지를 이용해 mock을 생성하여 디스크에 저장이 되고있는지 유닛테스트를 진행했습니다.


<br/>
<br/>

## 📸 Screenshot 

<img width="200" alt="image" src="https://github.com/user-attachments/assets/0a2c2567-ce6d-4849-8016-3fc8f6d3956a">
