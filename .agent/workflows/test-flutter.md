---
name: test-flutter
description: Generates comprehensive Flutter test suite with ROI-based prioritization, state management testing, API mocking, CI/CD integration (widget, unit, integration, golden tests)
---
<!-- 🌟 SenaiVerse - Claude Code Agent System v2.0 | Flutter Edition | Enterprise Testing -->

# Generate Test Suite

Generating tests for: $ARGUMENTS

## Test Generation Workflow

### Step 1: Analyze Target

1. Read the widget/file
2. Assess complexity (lines, widget tree depth, dependencies)
3. Determine business criticality
4. Calculate test priority: **Complexity × Criticality**
5. Assess existing test coverage

### Step 2: Determine Test Strategy (@test-generator-flutter)

**CRITICAL Priority (Payment, Auth, Data Loss Risk):**
- Integration tests (integration_test/ - full user journey)
- Widget tests (all user interactions)
- Unit tests (business logic)
- Golden tests (UI regression)
- Edge case coverage (network failures, validation)
- **State management tests** (Provider/Bloc/Riverpod)
- **API mocking** with Dio interceptors

**HIGH Priority (Core Features, User Profiles):**
- Widget tests (user interactions)
- Unit tests (logic)
- Basic edge cases
- **State management integration**

**MEDIUM Priority (Secondary Features):**
- Widget tests (basic interactions)
- Unit tests for complex logic

**LOW Priority (Simple Presentational Widgets):**
- Golden tests (visual regression)
- Or skip if truly static

### Step 3: Generate Tests (@test-generator-flutter)

Create test files with:

**Widget Tests** (test/widgets/)
```dart
testWidgets('LoginScreen submits valid credentials', (tester) async {
  final mockAuthService = MockAuthService();
  when(() => mockAuthService.login(any(), any()))
      .thenAnswer((_) async => AuthResult.success());

  await tester.pumpWidget(
    MaterialApp(home: LoginScreen(authService: mockAuthService)),
  );

  await tester.enterText(find.byKey(const Key('email')), 'test@example.com');
  await tester.enterText(find.byKey(const Key('password')), 'password123');
  await tester.tap(find.byKey(const Key('login_button')));
  await tester.pumpAndSettle();

  verify(() => mockAuthService.login('test@example.com', 'password123')).called(1);
});
```

**State Management Tests** (test/providers/ or test/blocs/)
```dart
// Provider Testing
test('CartProvider adds item correctly', () {
  final cart = CartProvider();
  final product = Product(id: '1', name: 'Test', price: 10.0);

  cart.addItem(product);

  expect(cart.items.length, 1);
  expect(cart.total, 10.0);
});

// Bloc Testing
blocTest<AuthBloc, AuthState>(
  'emits [AuthLoading, AuthSuccess] on successful login',
  build: () {
    when(() => mockAuthRepo.login(any(), any()))
        .thenAnswer((_) async => User(id: '1'));
    return AuthBloc(authRepository: mockAuthRepo);
  },
  act: (bloc) => bloc.add(LoginRequested('test@test.com', 'password')),
  expect: () => [AuthLoading(), isA<AuthSuccess>()],
);
```

**API Mocking** (test/mocks/)
```dart
// Using http_mock_adapter for Dio
final dioAdapter = DioAdapter(dio: dio);

dioAdapter.onGet(
  '/users/1',
  (server) => server.reply(200, {'id': '1', 'name': 'Test User'}),
);

// Test API service
test('fetches user successfully', () async {
  final apiService = ApiService(dio: dio);
  final user = await apiService.getUser('1');
  expect(user.name, 'Test User');
});
```

**Test Data Factories** (test/factories/)
```dart
import 'package:faker/faker.dart';

final faker = Faker();

class UserFactory {
  static User create({String? name, String? email}) {
    return User(
      id: faker.guid.guid(),
      name: name ?? faker.person.name(),
      email: email ?? faker.internet.email(),
    );
  }
}

// Usage
final user = UserFactory.create(name: 'Custom Name');
```

**Integration Tests** (integration_test/)
```dart
testWidgets('complete checkout flow', (tester) async {
  await tester.pumpWidget(MyApp());
  
  // Add to cart
  await tester.tap(find.byKey(const Key('add_to_cart')));
  await tester.pumpAndSettle();
  
  // Go to checkout
  await tester.tap(find.byIcon(Icons.shopping_cart));
  await tester.pumpAndSettle();
  
  // Complete payment
  await tester.enterText(find.byKey(const Key('card')), '4242424242424242');
  await tester.tap(find.text('Pay Now'));
  await tester.pumpAndSettle(const Duration(seconds: 5));
  
  expect(find.text('Payment Successful'), findsOneWidget);
});
```

**Golden Tests** (test/goldens/)
```dart
testGoldens('Button variants match golden', (tester) async {
  final builder = GoldenBuilder.grid(columns: 2, widthToHeightRatio: 3)
    ..addScenario('Primary', const Button(variant: ButtonVariant.primary))
    ..addScenario('Secondary', const Button(variant: ButtonVariant.secondary))
    ..addScenario('Disabled', const Button(enabled: false));

  await tester.pumpWidgetBuilder(builder.build());
  await screenMatchesGolden(tester, 'button_variants');
});
```

**Accessibility Tests**
```dart
testWidgets('has correct semantics', (tester) async {
  await tester.pumpWidget(MaterialApp(home: MyButton()));

  final semantics = tester.getSemantics(find.byType(MyButton));
  expect(semantics.label, 'Submit form');
  expect(semantics.hasFlag(SemanticsFlag.isButton), true);
});
```

### Step 4: CI/CD Integration

**GitHub Actions** (.github/workflows/test.yml)
```yaml
name: Flutter Tests

on: [push, pull_request]

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: subosito/flutter-action@v2
        with:
          flutter-version: '3.16.0'
          
      - run: flutter pub get
      - run: flutter test --coverage
      
      - name: Check coverage threshold
        run: |
          COVERAGE=$(lcov --summary coverage/lcov.info | grep "lines" | cut -d' ' -f4 | cut -d'%' -f1)
          if (( $(echo "$COVERAGE < 80" | bc -l) )); then
            echo "Coverage below 80%"
            exit 1
          fi
          
      - uses: codecov/codecov-action@v3
        with:
          files: coverage/lcov.info
```

### Step 5: Run Tests

```bash
# Run all tests
flutter test

# Run specific test file
flutter test test/widgets/login_screen_test.dart

# Run with coverage
flutter test --coverage

# View coverage report
genhtml coverage/lcov.info -o coverage/html
open coverage/html/index.html

# Run integration tests
flutter test integration_test/

# Update golden files
flutter test --update-goldens

# Run Bloc tests only
flutter test test/blocs/
```

### Step 6: Validation

Ensure:
- Tests are meaningful (not just coverage boosting)
- Edge cases covered (null, empty, error states)
- Error paths tested (network failures, validation errors)
- Async operations handled correctly (pump/pumpAndSettle)
- Semantics checked (accessibility testing)
- All controllers mocked properly
- Finders use Keys for reliability
- **State management fully tested**
- **API responses mocked**
- **CI/CD ready**

## Output

**Tests Generated:** X total tests

**Coverage:** Before X% → After Y%

**Test Types:**
- Widget tests: X tests
- Unit tests: X tests
- Integration tests: X tests
- Golden tests: X tests
- **State management tests**: X tests

**Files Created:**
- test/widgets/[widget]_test.dart
- test/unit/[service]_test.dart
- test/blocs/[bloc]_test.dart
- test/providers/[provider]_test.dart
- test/mocks/[mock].dart
- test/factories/[factory].dart
- integration_test/[flow]_test.dart
- test/goldens/[widget].png
- **.github/workflows/test.yml** (if not exists)

**Commands:**
```bash
flutter test                    # All tests
flutter test --coverage         # With coverage
flutter test integration_test/  # E2E tests
flutter test --update-goldens   # Update goldens
```

**Next Steps:**
1. Review generated tests
2. Run `flutter test` to verify
3. Fix any failing tests
4. Add additional edge cases if needed
5. **Configure CI/CD pipeline**
6. **Set coverage thresholds**

---

*© 2025 SenaiVerse | Command: /test-flutter | Claude Code System v2.0 (Flutter Edition)*
