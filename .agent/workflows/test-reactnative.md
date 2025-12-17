---
name: test-reactnative
description: Generates comprehensive React Native/Expo test suite with ROI-based prioritization, state management testing, MSW, CI/CD integration (Jest, RNTL, Detox)
---
<!-- 🌟 SenaiVerse - Claude Code Agent System v2.0 | React Native/Expo Edition | Enterprise Testing -->

# Test Suite Generation (React Native/Expo)

> **🧪 Generating tests for:** $ARGUMENTS

## Test Strategy (ROI-Based Prioritization)

Generate tests based on return-on-investment:

### Priority 1: HIGH ROI (Generate First)

**Component Tests (React Native Testing Library)**
- Critical user-facing components
- Complex interactive components
- Components with state management
- Navigation components

**State Management Tests**
- Redux/Zustand/Context stores
- Custom hooks with state
- Async state operations

### Priority 2: MEDIUM ROI

**Unit Tests (Jest)**
- Business logic functions
- Utility functions
- API service modules
- Custom hooks
- Redux reducers/actions

**Integration Tests**
- Navigation flows
- API integration
- State management flows

### Priority 3: LOWER ROI (If Time Permits)

**E2E Tests (Detox)**
- Critical user journeys only
- Login/signup flows
- Payment flows
- Core app functionality

## Test Generation Plan

For each file in $ARGUMENTS:

### 1. Component Tests (RNTL)

```tsx
import { render, fireEvent, waitFor, screen } from '@testing-library/react-native';

describe('LoginScreen', () => {
  it('renders all form fields', () => {
    render(<LoginScreen />);
    
    expect(screen.getByTestId('email-input')).toBeTruthy();
    expect(screen.getByTestId('password-input')).toBeTruthy();
    expect(screen.getByTestId('login-button')).toBeTruthy();
  });

  it('shows validation errors', async () => {
    render(<LoginScreen />);
    
    fireEvent.press(screen.getByTestId('login-button'));
    
    await waitFor(() => {
      expect(screen.getByText('Email is required')).toBeTruthy();
    });
  });

  it('navigates to home on success', async () => {
    const mockNavigate = jest.fn();
    render(<LoginScreen navigation={{ navigate: mockNavigate }} />);
    
    fireEvent.changeText(screen.getByTestId('email-input'), 'test@test.com');
    fireEvent.changeText(screen.getByTestId('password-input'), 'password123');
    fireEvent.press(screen.getByTestId('login-button'));
    
    await waitFor(() => {
      expect(mockNavigate).toHaveBeenCalledWith('Home');
    });
  });
});
```

### 2. State Management Tests

**Context Testing**
```tsx
import { render, screen, fireEvent, waitFor } from '@testing-library/react-native';
import { AuthProvider, useAuth } from '../context/AuthContext';

const TestComponent = () => {
  const { isAuthenticated, login } = useAuth();
  return (
    <View>
      <Text testID="status">{isAuthenticated ? 'Logged In' : 'Logged Out'}</Text>
      <Button testID="login" onPress={() => login('test', 'pass')} />
    </View>
  );
};

describe('AuthContext', () => {
  it('authenticates on login', async () => {
    render(
      <AuthProvider>
        <TestComponent />
      </AuthProvider>
    );

    fireEvent.press(screen.getByTestId('login'));

    await waitFor(() => {
      expect(screen.getByTestId('status')).toHaveTextContent('Logged In');
    });
  });
});
```

**Zustand Testing**
```tsx
import { renderHook, act } from '@testing-library/react-hooks';
import { useCartStore } from '../stores/cartStore';

describe('CartStore', () => {
  beforeEach(() => {
    useCartStore.getState().clearCart();
  });

  it('adds item to cart', () => {
    const { result } = renderHook(() => useCartStore());
    
    act(() => {
      result.current.addItem({ id: '1', name: 'Product', price: 10 });
    });

    expect(result.current.items).toHaveLength(1);
    expect(result.current.total).toBe(10);
  });
});
```

**Redux Testing**
```tsx
import { configureStore } from '@reduxjs/toolkit';
import authReducer, { login, logout } from '../redux/authSlice';

describe('AuthSlice', () => {
  it('handles login', () => {
    const store = configureStore({ reducer: { auth: authReducer } });
    
    store.dispatch(login({ id: '1', name: 'Test User' }));
    
    expect(store.getState().auth.isAuthenticated).toBe(true);
  });
});
```

### 3. API Mocking (MSW)

```tsx
import { setupServer } from 'msw/node';
import { rest } from 'msw';

const server = setupServer(
  rest.get('https://api.example.com/users/:id', (req, res, ctx) => {
    return res(ctx.json({ id: req.params.id, name: 'Test User' }));
  }),
  
  rest.post('https://api.example.com/login', (req, res, ctx) => {
    return res(ctx.json({ token: 'fake-jwt-token' }));
  })
);

beforeAll(() => server.listen());
afterEach(() => server.resetHandlers());
afterAll(() => server.close());

describe('UserProfile', () => {
  it('fetches and displays user', async () => {
    render(<UserProfile userId="1" />);

    await waitFor(() => {
      expect(screen.getByText('Test User')).toBeTruthy();
    });
  });

  it('handles API error', async () => {
    server.use(
      rest.get('https://api.example.com/users/:id', (req, res, ctx) => {
        return res(ctx.status(500));
      })
    );

    render(<UserProfile userId="1" />);

    await waitFor(() => {
      expect(screen.getByText('Failed to load')).toBeTruthy();
    });
  });
});
```

### 4. Test Data Factories

```tsx
import { faker } from '@faker-js/faker';

export const createUser = (overrides = {}) => ({
  id: faker.string.uuid(),
  name: faker.person.fullName(),
  email: faker.internet.email(),
  avatar: faker.image.avatar(),
  ...overrides,
});

export const createProduct = (overrides = {}) => ({
  id: faker.string.uuid(),
  name: faker.commerce.productName(),
  price: parseFloat(faker.commerce.price()),
  image: faker.image.url(),
  ...overrides,
});

// Usage in tests
const user = createUser({ name: 'Custom Name' });
const products = Array.from({ length: 5 }, () => createProduct());
```

### 5. E2E Tests (Detox)

```tsx
describe('Login Flow', () => {
  beforeAll(async () => {
    await device.launchApp({ newInstance: true });
  });

  it('should login successfully', async () => {
    await element(by.id('email-input')).typeText('user@test.com');
    await element(by.id('password-input')).typeText('password123');
    await element(by.id('login-button')).tap();
    
    await waitFor(element(by.id('home-screen')))
      .toBeVisible()
      .withTimeout(5000);
  });

  it('should show error for invalid credentials', async () => {
    await element(by.id('email-input')).typeText('wrong@test.com');
    await element(by.id('password-input')).typeText('wrongpass');
    await element(by.id('login-button')).tap();
    
    await waitFor(element(by.text('Invalid credentials')))
      .toBeVisible()
      .withTimeout(3000);
  });
});
```

### 6. Snapshot Tests

```tsx
describe('Button Snapshots', () => {
  it('matches primary button', () => {
    const { toJSON } = render(<Button variant="primary">Click</Button>);
    expect(toJSON()).toMatchSnapshot();
  });

  it('matches disabled button', () => {
    const { toJSON } = render(<Button disabled>Click</Button>);
    expect(toJSON()).toMatchSnapshot();
  });
});
```

### 7. Accessibility Tests

```tsx
describe('Accessibility', () => {
  it('button has accessibility label', () => {
    render(<Button accessibilityLabel="Submit form">Submit</Button>);
    expect(screen.getByRole('button', { name: 'Submit form' })).toBeTruthy();
  });

  it('input has accessibility hints', () => {
    render(
      <TextInput
        accessibilityLabel="Email address"
        accessibilityHint="Enter your email"
      />
    );
    expect(screen.getByLabelText('Email address')).toBeTruthy();
  });
});
```

### 8. CI/CD Integration

**GitHub Actions** (.github/workflows/test.yml)
```yaml
name: React Native Tests

on: [push, pull_request]

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-node@v4
        with:
          node-version: '18'
          cache: 'npm'
          
      - run: npm ci
      - run: npm test -- --coverage --ci
      
      - name: Check coverage threshold
        run: |
          COVERAGE=$(cat coverage/coverage-summary.json | jq '.total.lines.pct')
          if (( $(echo "$COVERAGE < 80" | bc -l) )); then
            echo "Coverage below 80%"
            exit 1
          fi
          
      - uses: codecov/codecov-action@v3
        with:
          files: coverage/lcov.info

  e2e-ios:
    runs-on: macos-latest
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-node@v4
      - run: npm ci
      - run: npx pod-install
      - run: npx detox build --configuration ios.sim.release
      - run: npx detox test --configuration ios.sim.release
```

## Success Criteria

✅ All HIGH ROI tests generated
✅ Component tests use React Native Testing Library
✅ Unit tests for business logic
✅ **State management tests** (Context/Zustand/Redux)
✅ **API mocking with MSW**
✅ **Test data factories** created
✅ Mocks for native modules included
✅ testID props added where needed
✅ Accessibility tests included
✅ All tests passing (`npm test`)
✅ **CI/CD pipeline configured**
✅ **Coverage thresholds set (80%+)**

## Commands to Run

```bash
# Run all tests
npm test

# Run with coverage
npm test -- --coverage

# Run specific test
npm test -- Button.test.tsx

# Update snapshots
npm test -- -u

# Run E2E tests (Detox)
npx detox test --configuration ios.sim.release

# Watch mode
npm test -- --watch
```

## Report

**Tests Generated:** X total tests

**Coverage:** Before X% → After Y%

**Test Types:**
- Component tests: X tests
- Unit tests: X tests
- Hook tests: X tests
- **State management tests**: X tests
- E2E tests: X tests
- Snapshot tests: X tests

**Files Created:**
- \_\_tests\_\_/components/[component].test.tsx
- \_\_tests\_\_/screens/[screen].test.tsx
- \_\_tests\_\_/hooks/[hook].test.ts
- \_\_tests\_\_/stores/[store].test.ts
- \_\_tests\_\_/utils/[util].test.ts
- \_\_mocks\_\_/[mock].ts
- factories/[factory].ts
- e2e/[flow].e2e.ts
- **.github/workflows/test.yml** (if not exists)

**Next Steps:**
1. Review generated tests
2. Run `npm test` to verify
3. Fix any failing tests
4. Add additional edge cases
5. **Configure CI/CD pipeline**
6. **Set coverage thresholds**

---

*© 2025 SenaiVerse | Command: /test-reactnative | Claude Code System v2.0 (React Native/Expo Edition)*
