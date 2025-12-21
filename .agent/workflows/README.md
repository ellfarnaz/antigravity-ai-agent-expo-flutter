# 🔄 Orchestration Workflows

This directory contains **9 enterprise-grade multi-agent orchestration workflows** - 4 for Flutter, 4 for React Native/Expo, and 1 platform-agnostic. Each workflow coordinates multiple specialized agents to accomplish complex development tasks with parallel execution.

> **📊 Total: 2,500+ lines** of workflow orchestration code across 9 files.

---

## 📋 Workflow Catalog

### 🎯 Product Planning Workflow (NEW!)

#### `/plan-product`
**File:** [`plan-product.md`](plan-product.md) (~350 lines)

**Purpose:** Platform-agnostic product discovery workflow that transforms brief ideas into comprehensive Product Requirements Documents (PRD).

**Agent Orchestra:**
| Agent | Role |
|-------|------|
| 🎯 Product Planner | Vision clarification, feature extraction, screen mapping |
| 🏗️ Grand Architect | Technical architecture recommendations |

**Outputs:**
- ✅ Complete Product Requirements Document (PRD)
- ✅ User personas and user stories
- ✅ Feature list with MVP prioritization
- ✅ Screen inventory with navigation
- ✅ Technical stack recommendations
- ✅ Development roadmap (sprint planning)
- ✅ Memory storage for future reference

**Usage:**
```
/plan-product I want to build a habit tracker app
/plan-product I want to build a social fitness app
/plan-product Daily expense tracking application
```

**Integration:** After PRD approval, proceed with:
- `/feature-flutter [feature]` for Flutter development
- `/feature-reactnative [feature]` for React Native development

---

### 🎯 Feature Implementation Workflows

#### `/feature-flutter`
**File:** [`feature-flutter.md`](feature-flutter.md) (223 lines)

**Purpose:** Implements new Flutter features using multi-agent orchestration with enterprise-grade security, performance, and testing.

**Agent Orchestra:**
| Agent | Role |
|-------|------|
| 🏗️ Grand Architect | Architecture design, **CI/CD**, **feature flags** |
| 🔐 Security Specialist | **OWASP**, **biometric**, **JWT/OAuth2** |
| 🔮 Performance Prophet | **Shader jank**, **cold start prediction** |
| ♿ A11y Enforcer | **WCAG 2.2**, screen reader testing |
| 🎨 Design Token Guardian | **Dark mode**, token validation |
| 🧪 Test Generator | **State management**, **factories**, **CI/CD** |

**New Capabilities:**
- ✅ CI/CD integration (GitHub Actions, Fastlane)
- ✅ Feature flags & A/B testing
- ✅ Biometric authentication security
- ✅ JWT/OAuth2/PKCE implementation
- ✅ Error tracking (Sentry)
- ✅ Deep linking & push notifications
- ✅ Impeller optimization

**Usage:**
```
/feature-flutter Add user authentication with biometric support
/feature-flutter Implement offline-first shopping cart
/feature-flutter Create payment flow with security compliance
```

---

#### `/feature-reactnative`
**File:** [`feature-reactnative.md`](feature-reactnative.md) (232 lines)

**Purpose:** Implements new React Native/Expo features using multi-agent orchestration with enterprise-grade security, performance, and testing.

**Agent Orchestra:**
| Agent | Role |
|-------|------|
| 🏗️ Grand Architect | Architecture design, **CI/CD**, **EAS Build** |
| 🔐 Security Specialist | **OWASP**, **biometric**, **JWT/OAuth2** |
| 🔮 Performance Prophet | **JSI/Bridge**, **Hermes**, **cold start** |
| ♿ A11y Enforcer | **WCAG 2.2**, screen reader testing |
| 🎨 Design Token Guardian | **Dark mode**, token validation |
| 🧪 Test Generator | **Zustand/Redux**, **MSW**, **factories** |

**New Capabilities:**
- ✅ CI/CD integration (GitHub Actions, EAS Build)
- ✅ Hermes engine optimization
- ✅ JSI for performance-critical operations
- ✅ Biometric authentication (expo-local-authentication)
- ✅ JWT/OAuth2/PKCE (expo-auth-session)
- ✅ Error tracking (Sentry)
- ✅ FlashList for large lists

**Usage:**
```
/feature-reactnative Add user authentication with Face ID
/feature-reactnative Implement real-time chat with push notifications
/feature-reactnative Create animated onboarding with Reanimated
```

---

### 🔍 Code Review Workflows

#### `/review-flutter`
**File:** [`review-flutter.md`](review-flutter.md) (189 lines)

**Purpose:** Comprehensive multi-agent Flutter code review with enterprise-grade analysis.

**Agent Orchestra (Parallel Execution ⚡):**
| Agent | Checks |
|-------|--------|
| 🎨 Design Token Guardian | Theme usage, **dark mode**, **auto-fix** |
| ♿ A11y Enforcer | **WCAG 2.2**, semantics, contrast |
| 🔐 Security Specialist | **OWASP**, **JWT**, **biometric**, **GDPR** |
| 🔮 Performance Prophet | **Shader jank**, **cold start**, **predictive scoring** |
| 🧪 Test Generator | Coverage, **state management tests** |

**New Review Points:**
- ✅ Shader compilation jank prediction
- ✅ Impeller vs Skia analysis
- ✅ Biometric security implementation
- ✅ JWT token validation
- ✅ Cold start impact analysis
- ✅ Performance & security scoring

**Usage:**
```
/review-flutter
/review-flutter Review authentication flow
/review-flutter Review payment feature
```

---

#### `/review-reactnative`
**File:** [`review-reactnative.md`](review-reactnative.md) (191 lines)

**Purpose:** Comprehensive multi-agent React Native/Expo code review with enterprise-grade analysis.

**Agent Orchestra (Parallel Execution ⚡):**
| Agent | Checks |
|-------|--------|
| 🎨 Design Token Guardian | Theme usage, **dark mode**, **auto-fix** |
| ♿ A11y Enforcer | **WCAG 2.2**, accessibility props |
| 🔐 Security Specialist | **OWASP**, **JWT**, **biometric**, **GDPR** |
| 🔮 Performance Prophet | **JSI/Bridge**, **Hermes**, **predictive scoring** |
| 🧪 Test Generator | Coverage, **MSW**, **state management tests** |

**New Review Points:**
- ✅ JSI vs Bridge analysis
- ✅ Fabric renderer prediction
- ✅ Hermes optimization check
- ✅ Biometric security implementation
- ✅ FlashList recommendation
- ✅ Performance & security scoring

**Usage:**
```
/review-reactnative
/review-reactnative Review AuthScreen component
/review-reactnative Review API integration layer
```

---

### 🧪 Test Generation Workflows

#### `/test-flutter`
**File:** [`test-flutter.md`](test-flutter.md) (295 lines)

**Purpose:** Generates comprehensive Flutter test suite with ROI-based prioritization, state management testing, and CI/CD integration.

**Test Types Generated:**
| Type | Description |
|------|-------------|
| Widget Tests | UI component testing with pump/pumpAndSettle |
| Unit Tests | Business logic testing |
| Integration Tests | User flow testing |
| Golden Tests | Visual regression testing |
| **State Management** | Provider/Bloc/Riverpod testing |
| **API Mocking** | Dio interceptor patterns |

**New Capabilities:**
- ✅ **State management testing** (Provider, Bloc, Riverpod)
- ✅ **API mocking** (http_mock_adapter for Dio)
- ✅ **Test data factories** (Faker package)
- ✅ **CI/CD integration** (GitHub Actions template)
- ✅ **Coverage thresholds** (80%+ enforced)
- ✅ **Accessibility testing** (semantics validation)

**Usage:**
```
/test-flutter
/test-flutter Focus on authentication feature
/test-flutter Generate integration tests for checkout flow
```

---

#### `/test-reactnative`
**File:** [`test-reactnative.md`](test-reactnative.md) (420 lines)

**Purpose:** Generates comprehensive React Native/Expo test suite with ROI-based prioritization, state management testing, and CI/CD integration.

**Test Types Generated:**
| Type | Description |
|------|-------------|
| Component Tests | React Native Testing Library |
| Unit Tests | Jest unit tests |
| Integration Tests | User flow testing with RNTL |
| E2E Tests | Detox end-to-end tests |
| **State Management** | Redux/Zustand/Context testing |
| **API Mocking** | MSW (Mock Service Worker) |

**New Capabilities:**
- ✅ **State management testing** (Redux, Zustand, Context)
- ✅ **API mocking** (MSW - Mock Service Worker)
- ✅ **Test data factories** (Faker package)
- ✅ **CI/CD integration** (GitHub Actions template)
- ✅ **Coverage thresholds** (80%+ enforced)
- ✅ **Snapshot testing** for visual regression
- ✅ **Accessibility testing**

**Usage:**
```
/test-reactnative
/test-reactnative Focus on LoginScreen
/test-reactnative Generate E2E tests for payment flow
```

---

### 🎨 Stitch Conversion Workflows (NEW!)

#### `/stitch-flutter`
**File:** [`stitch-flutter.md`](stitch-flutter.md) (145 lines)

**Purpose:** Converts Google Stitch HTML/TailwindCSS designs to Flutter widgets.

**Agent Orchestra:**
| Agent | Role |
|-------|------|
| 🖼️ Stitch Converter | HTML → Flutter widget conversion |
| ♿ A11y Enforcer | Accessibility validation |
| 🎨 Design Token Guardian | Theme token compliance |
| 🧪 Test Generator | Basic widget tests |

**Capabilities:**
- ✅ Parse all `code.html` files from Stitch folder
- ✅ Extract design tokens (colors, typography, spacing)
- ✅ Generate theme files (`app_colors.dart`, `app_theme.dart`)
- ✅ Convert HTML structure to Flutter widgets
- ✅ Create reusable components
- ✅ Generate navigation setup

**Usage:**
```
/stitch-flutter ./stitch_my_project
/stitch-flutter ./design/stitch_dashboard
```

---

#### `/stitch-reactnative`
**File:** [`stitch-reactnative.md`](stitch-reactnative.md) (145 lines)

**Purpose:** Converts Google Stitch HTML/TailwindCSS designs to React Native components.

**Agent Orchestra:**
| Agent | Role |
|-------|------|
| 🖼️ Stitch Converter | HTML → React Native conversion |
| ♿ A11y Enforcer | Accessibility validation |
| 🎨 Design Token Guardian | Theme token compliance |
| 🧪 Test Generator | Basic component tests |

**Capabilities:**
- ✅ Parse all `code.html` files from Stitch folder
- ✅ Extract design tokens (colors, typography, spacing)
- ✅ Generate theme files (`colors.ts`, `typography.ts`)
- ✅ Convert HTML structure to React Native components
- ✅ Create reusable components
- ✅ Support NativeWind (optional)

**Usage:**
```
/stitch-reactnative ./stitch_my_project
/stitch-reactnative ./design/stitch_dashboard
```

> **💡 Tip:** Feature workflows (`/feature-*`) automatically detect `stitch_*` folders and use them as design foundation!

---

## ⚡ Parallel Execution

All workflows are optimized for **parallel execution** to minimize wait time.

### How It Works

Independent agents run **simultaneously** instead of sequentially:

```
Sequential (OLD):        Parallel (NEW):
Agent 1 → 5 min          Agent 1 ┐
Agent 2 → 5 min          Agent 2 ├─ ALL run simultaneously
Agent 3 → 5 min          Agent 3 ├─ Max time: ~5-7 min  
Agent 4 → 5 min          Agent 4 ┘
Total: ~20 min           Total: ~5-7 min
```

### Time Savings

| Workflow | Sequential | Parallel | Saved |
|----------|-----------|----------|-------|
| `/review-flutter` | 15-20 min | 5-7 min | **~10-13 min** |
| `/review-reactnative` | 12-18 min | 4-6 min | **~8-12 min** |
| `/feature-flutter` | 8-12 min | 3-5 min | **~5-7 min** |
| `/feature-reactnative` | 7-10 min | 3-4 min | **~4-6 min** |

### Which Agents Run in Parallel?

**✅ Parallel (Independent):**
- Design Token Guardian
- A11y Enforcer
- Security Specialist
- Performance Prophet/Enforcer
- Test Generator

**❌ Sequential (Dependencies):**
- Grand Architect (must run first for planning)
- Final code review (needs all checks complete)

---

## 📊 Workflow Comparison

| Feature | `/feature-*` | `/review-*` | `/test-*` |
|---------|-------------|-------------|-----------| 
| **Purpose** | Build new features | Review existing code | Generate tests |
| **Agents Used** | 6 agents | 5+ agents (parallel) | 3 agents |
| **Outputs** | Code + Tests + Docs | Review report + Scores | Test suite + CI/CD |
| **Duration** | 15-30 min | 5-7 min (parallel) | 10-15 min |
| **CI/CD** | ✅ Configured | ✅ Validated | ✅ Generated |
| **Security** | ✅ OWASP check | ✅ OWASP audit | ✅ Security tests |

---

## 🎯 Best Practices

### 1. Be Specific
❌ Bad: `/feature-flutter Add login`
✅ Good: `/feature-flutter Add email/password login with biometric fallback, JWT tokens, and password reset flow`

### 2. Provide Context
Include relevant information:
- User requirements
- Technical constraints  
- Design specifications
- Performance targets
- **Security requirements**
- **CI/CD preferences**

### 3. Review Plans Carefully
- Read implementation plans thoroughly
- Ask questions before approving
- Request changes if needed
- **Check security recommendations**
- **Review performance predictions**

### 4. Iterate
- Small, focused features work best
- Break large features into smaller workflows
- Run `/review-*` between major changes
- **Run tests after each feature**

---

## 📊 Workflow Statistics

| Metric | Value |
|--------|-------|
| Total Workflows | 9 (4 Flutter + 4 React Native + 1 Agnostic) |
| Total Lines | 2,500+ |
| Average per Workflow | 258 lines |
| Parallel Execution | ✅ Enabled (2-3x faster) |
| CI/CD Templates | ✅ Included |

---

**Need help?** Check out the [Agents Documentation](../agents/README.md) to learn about individual agents (12,037 lines of enterprise-grade expertise).
