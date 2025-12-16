---
trigger: always_on
---

# 🎯 Antigravity AI Agent System Rules

> **Version:** 2.1 | **Last Updated:** 2025-12-16

These rules are MANDATORY for all AI agents working on this project.

---

## 📌 Rule 1: Workflow-First Development

| Task Type | Command | Platform |
|-----------|---------|----------|
| New Feature | `/feature-flutter` or `/feature-reactnative` | Mobile |
| Code Review | `/review-flutter` or `/review-reactnative` | Mobile |
| Test Generation | `/test-flutter` or `/test-reactnative` | Mobile |
| Design Conversion | `/stitch-flutter` or `/stitch-reactnative` | Mobile |

> [!IMPORTANT]
> DO NOT start coding without using the appropriate workflow. Workflows ensure all quality gates are met.

---

## 🛡️ Rule 2: Quality Gates (Non-Negotiable)

### ❌ PROHIBITED (Hard Rules)
- Hardcode colors, spacing, typography → Use **design tokens**
- Skip accessibility for interactive elements → Require **Semantics widget**
- Ignore security for auth/payment features → Require **OWASP compliance**
- Deploy without tests → Minimum **widget test per feature**
- Commit with analyzer warnings → Must be **`flutter analyze` clean**

### ✅ REQUIRED (Mandatory)
- `const` constructor for static widgets
- `dispose()` for all controllers/streams
- 60fps minimum performance
- Touch target 48x48dp minimum
- WCAG 2.2 Level AA compliance

---

## 🔐 Rule 3: Security Standards

```yaml
Authentication:
  - BiometricAuth: Required for sensitive data
  - JWT: Proper validation + rotation
  - OAuth2: PKCE implementation
  - Storage: FlutterSecureStorage only

Protection:
  - Root/Jailbreak: Detection required
  - Screenshots: Prevention on payment screens
  - SSL: Pinning enabled
  - Input: Sanitization required

Compliance:
  - OWASP: Mobile Top 10 coverage
  - GDPR: User data handling
  - Encryption: AES-256 for data at rest
```

---

## 🧪 Rule 4: Testing Requirements

| Test Type | Minimum Coverage | Priorities |
|-----------|-----------------|------------|
| Widget Tests | 80% per component | All UI components |
| Unit Tests | 90% business logic | Use cases, repositories |
| Integration Tests | Critical flows only | Auth, payment, core features |
| Golden Tests | Complex UI only | Custom widgets, animations |

**Required Actions:**
1. ROI-based test prioritization
2. State management tests (Provider/Bloc/Redux)
3. API mocking with Dio interceptors (Flutter) or MSW (React Native)
4. CI integration with GitHub Actions

---

## ⚡ Rule 5: Performance Budgets

```yaml
Flutter:
  FPS: 60 (minimum)
  Cold Start: < 3 seconds
  APK Size: < 50MB (release)
  IPA Size: < 100MB (release)
  Memory: < 150MB baseline
  Impeller: Enabled for rendering

React Native:
  FPS: 60 (minimum)  
  Cold Start: < 4 seconds
  Bundle Size: < 5MB (JS bundle)
  Memory: < 200MB baseline
  Hermes: Enabled for performance
```

---

## ♿ Rule 6: Accessibility Standards

- **WCAG 2.2 Level AA** compliance required
- **Semantics widgets** for all interactive elements
- **Color contrast** ratio 4.5:1 minimum
- **Screen reader** compatible (VoiceOver + TalkBack)
- **Keyboard navigation** support
- **Motion preferences** respected (reduced motion)
- **Dark mode** accessibility validated

---

## 🎨 Rule 7: Design System Compliance

**Theme Enforcement:**
- ❌ `Color(0xFF...)` → ✅ `Theme.of(context).colorScheme.primary`
- ❌ `TextStyle(fontSize: 16)` → ✅ `Theme.of(context).textTheme.bodyLarge`
- ❌ `EdgeInsets.all(16)` → ✅ `EdgeInsets.all(AppSpacing.md)`
- ❌ `Duration(milliseconds: 300)` → ✅ `AppDurations.medium`

**Token Categories:**
- Colors (light/dark mode)
- Typography (scale + weights)
- Spacing (consistent scale)
- Animation durations
- Border radius
- Elevation/shadows

---

## 📱 Rule 8: Platform Support

**Build Validation:**
1. Test on iOS simulator (iPhone 14/15 recommended)
2. Test on Android emulator (Pixel 6+)
3. Run `flutter analyze` → zero warnings
4. Run `flutter test` → all passing
5. Check bundle size with `--analyze-size`

**Platform-Specific:**
- Update `AndroidManifest.xml` for permissions
- Update `Info.plist` for iOS capabilities
- Handle Material vs Cupertino appropriately

---

## 🔄 Rule 9: CI/CD Integration

**Required Setup:**
- GitHub Actions for automated testing
- Fastlane for deployment
- Codecov for coverage tracking (80% minimum)
- Sentry for error tracking
- Firebase Analytics for metrics

**Pre-commit Checks:**
```bash
flutter analyze
flutter test
flutter pub run build_runner build
```

---

## 📝 Rule 10: Documentation

**When to Update:**
- `CLAUDE.md` → Architectural changes
- `README.md` → Setup or usage changes
- Inline comments → Complex business logic
- API docs → Public methods/classes

**Agent Documentation:**
- Each agent has its own checklist
- Follow the specified output format
- Provide actionable fixes, not just issues

---

## 🧭 Rule 11: Navigation Standards

### React Native (Expo Router)

```yaml
Structure:
  Root Layout: app/_layout.tsx (Stack)
  Auth Group: app/(auth)/ (login, register)
  Main Group: app/(app)/ (tabs - home, profile, etc.)
  Dynamic Routes: app/[id].tsx or app/item/[id].tsx
  Modals: Separate files at root level

Naming Convention:
  - Groups: "(auth)", "(app)", "(dashboard)" - context-based
  - DO NOT hardcode "(tabs)" as group name
  - Group name should match project type

Hooks Required:
  - useRouter() for navigation
  - useLocalSearchParams() for dynamic params
  - useFocusEffect() for screen focus events
  - usePathname() for current route
```

### Flutter (go_router)

```yaml
Structure:
  Router Config: lib/navigation/app_router.dart
  Shell Routes: Bottom navigation tabs
  Nested Routes: Stack within tabs
  Dynamic Routes: /item/:id pattern

Features Required:
  - Deep linking support
  - Path parameters properly handled
  - Redirect guards for auth
  - GoRouterRefreshStream for auth state
```

---

## 🎨 Rule 12: Stitch Design Integration

### Folder Detection

```yaml
Pattern: stitch_*/
Location: Project root
Structure:
  stitch_project_name/
  ├── screen_name/
  │   ├── code.html    # HTML + TailwindCSS
  │   └── screen.png   # Visual reference
  └── another_screen/
      ├── code.html
      └── screen.png
```

### Conversion Workflow

| Step | Action |
|------|--------|
| 1 | Detect `stitch_*` folder in project |
| 2 | Run `/stitch-flutter` or `/stitch-reactnative` |
| 3 | Extract design tokens from TailwindCSS config |
| 4 | Generate theme files (colors, typography, spacing) |
| 5 | Convert HTML elements to native widgets/components |
| 6 | Generate navigation based on folder structure |
| 7 | Run QA checks (a11y, tokens, performance) |

### Screen Naming Convention

| Stitch Folder | Flutter Output | React Native Output |
|---------------|----------------|---------------------|
| `home/` | `lib/screens/home_screen.dart` | `app/(app)/index.tsx` |
| `login/` | `lib/screens/login_screen.dart` | `app/(auth)/login.tsx` |
| `profile/` | `lib/screens/profile_screen.dart` | `app/(app)/profile.tsx` |
| `detail_[id]/` | `lib/screens/detail_screen.dart` | `app/detail/[id].tsx` |

### Auto-Detection in Feature Workflow

```
/feature-flutter or /feature-reactnative
  ↓
Phase 0: Detect stitch_* folder
  ↓
If found → Use Stitch Converter agent first
If not found → Continue with AI generation
```

---

## 🚀 Quick Reference

```
/feature-flutter    → Implement Flutter feature with full QA
/feature-reactnative → Implement React Native feature with full QA
/review-flutter     → Comprehensive Flutter code review
/review-reactnative → Comprehensive React Native review
/test-flutter       → Generate Flutter test suite
/test-reactnative   → Generate React Native test suite
/stitch-flutter     → Convert HTML design to Flutter
/stitch-reactnative → Convert HTML design to React Native
```

---

*© 2025 SenaiVerse | Antigravity AI Agent System v2.1*
