---
name: feature-flutter
description: Implements new Flutter features using multi-agent orchestration workflow with enterprise-grade security, performance, and testing
---
<!-- 🌟 SenaiVerse - Claude Code Agent System v2.0 | Flutter Edition | Enterprise -->

# Feature Implementation Workflow

Implements: $ARGUMENTS

## Execution Plan

Execute the following multi-agent workflow for Flutter development:

### Phase 0: Design Source Detection (Optional)

**Check for Google Stitch Designs:**
- Look for folders: `stitch_*`, `design/`, `ui/`
- Look for files: `*.html` with TailwindCSS

**If Stitch designs found:**
1. Invoke @stitch-converter-flutter
2. Extract design tokens (colors, typography, spacing)
3. Generate theme files and base components
4. Use as foundation for implementation

**If no Stitch designs:**
- Continue with AI-generated implementation (Phase 1)

---

### Phase 1: Planning & Analysis

1. **Grand Architect Analysis** (@grand-architect-flutter)
   - Break down the feature into implementation steps
   - Analyze architectural impact on widget tree
   - Identify affected files (lib/ structure)
   - Determine state management approach (Provider/BLoC/Riverpod)
   - Assess complexity and risks
   - **Plan CI/CD integration** (GitHub Actions, Fastlane)
   - **Consider feature flags** for gradual rollout
   - **Plan analytics events** for tracking

2. **Feature Impact Assessment**
   - Estimate implementation time
   - Identify pubspec.yaml dependencies needed
   - Determine if platform-specific code required (iOS/Android)
   - Check if build_runner needed (code generation)
   - Assess breaking changes
   - **Plan i18n support** if user-facing text

### Phase 2: Security & Architecture Review

1. **Security Audit** (@security-specialist-flutter)
   If feature involves user data, auth, payments, or sensitive operations:
   - **OWASP Mobile Top 10** compliance check
   - Review FlutterSecureStorage usage
   - Check platform channel security
   - **Biometric authentication** implementation (if auth)
   - **JWT token handling** (validation, rotation)
   - **OAuth2/PKCE** for external auth
   - **Root/jailbreak detection** for sensitive features
   - **Screenshot prevention** for payment screens
   - **GDPR compliance** for user data

2. **State Management Planning**
   - Determine state architecture (ChangeNotifier, Cubit, StateNotifier)
   - Plan Provider/BLoC/Riverpod integration
   - Design data flow and widget rebuilds
   - Identify where const can be used
   - **Plan error tracking** (Sentry integration)

### Phase 3: Implementation

1. **Update Dependencies**
   - Add required packages to pubspec.yaml
   - Run `flutter pub get`
   - Run `flutter pub upgrade` if needed

2. **Create Feature Structure**
   - Generate feature folder structure (presentation, domain, data layers)
   - Create widgets, screens, providers/blocs
   - Follow project conventions from CLAUDE.md

3. **Write Core Logic**
   - Implement business logic in use cases/repositories
   - Add proper Dart types (null safety)
   - Follow ThemeData design tokens (no hardcoded values)
   - Use const constructors where possible
   - **Implement with Impeller optimization** in mind

4. **Platform-Specific Implementation** (if needed)
   - Implement platform channels for iOS/Android
   - Handle Material vs Cupertino widgets
   - Update AndroidManifest.xml / Info.plist if needed
   - **Configure deep linking** (app_links)
   - **Setup push notifications** (FCM) if needed

5. **Code Generation** (if using build_runner)
   - Add annotations (freezed, json_serializable, retrofit)
   - Run `flutter pub run build_runner build --delete-conflicting-outputs`

### Phase 4: Quality Assurance (Parallel Execution) ⚡

Run ALL quality checks **in parallel** after implementation:

**1. Generate Tests** (@test-generator-flutter)
```
Execute in parallel:
- Widget tests for UI components
- Unit tests for business logic
- Integration tests if critical flow
- Golden tests for complex UI
- **State management tests** (Provider/Bloc)
- **API mocking** (Dio interceptors)
- **Test data factories** (Faker)
```

**2. Accessibility Check** (@a11y-enforcer-flutter)
```
Execute in parallel:
- Validate Semantics widgets
- Check touch target sizes (48x48 minimum)
- Verify color contrast (WCAG 2.2 AA)
- Test with screen readers (TalkBack/VoiceOver)
- **Motion/cognitive accessibility**
- **Keyboard focus management**
- **Dark mode accessibility**
```

**3. Performance Check** (@performance-prophet-flutter)
```
Execute in parallel:
- Predict build() method complexity
- Check for unnecessary rebuilds (setState anti-patterns)
- Validate const usage
- Check dispose() implementations
- Ensure 60fps maintained
- **Shader compilation jank prediction**
- **Cold start impact analysis**
- **Network waterfall detection**
```

**4. Design System Compliance** (@design-token-guardian-flutter)
```
Execute in parallel:
- Verify Theme.of(context) usage
- Check for hardcoded colors/sizes
- Validate const constructors
- **Dark mode token validation**
- **Animation token compliance**
- **Auto-fix suggestions**
```

**5. Runtime Performance** (@performance-enforcer-flutter)
```
Execute in parallel:
- Memory leak detection
- Dispose pattern validation
- Widget rebuild optimization
- Battery/power consumption
- Network request efficiency
```

> **⚡ Performance:** All 5 quality checks run simultaneously (~3-5 min vs ~10-15 min sequential)

### Phase 5: Final Review

1. **Code Review** (/review-flutter)
   - Run comprehensive Flutter review
   - Fix any issues found
   - Run `flutter analyze`
   - Fix lint warnings

2. **Build Validation**
   - Test on iOS simulator/device
   - Test on Android emulator/device
   - Verify APK/IPA size (`flutter build apk --analyze-size`)
   - **Verify Impeller performance** (`flutter run --enable-impeller`)

3. **Documentation**
   - Add inline comments for complex logic
   - Update CLAUDE.md if architectural changes
   - Document any platform-specific behavior

4. **CI/CD Setup** (if new feature)
   - Add to GitHub Actions workflow
   - Configure Codecov thresholds
   - Setup automated testing

## Success Criteria

✅ Feature implemented and working on iOS & Android
✅ Widget + integration tests generated and passing
✅ Accessibility compliant (Semantics, WCAG 2.2)
✅ No security vulnerabilities (OWASP compliant)
✅ Performance: 60fps maintained, const used
✅ Design system: No hardcoded values
✅ APK/IPA size within budget
✅ `flutter analyze` passes with no errors
✅ dispose() called for all controllers
✅ **CI/CD pipeline configured**
✅ **Error tracking enabled** (Sentry)

## Commands to Run

```bash
# Add dependencies
flutter pub get

# Generate code (if using build_runner)
flutter pub run build_runner build --delete-conflicting-outputs

# Run tests
flutter test

# Run tests with coverage
flutter test --coverage

# Analyze code
flutter analyze

# Build and check size
flutter build apk --analyze-size
flutter build ios --analyze-size

# Run on device with Impeller
flutter run --enable-impeller

# Update golden files
flutter test --update-goldens
```

## Report

Provide summary:
- Files created/modified (lib/ paths)
- pubspec.yaml dependencies added
- Tests added (test/, integration_test/)
- Platform-specific changes (Android/iOS)
- Build size impact (+X MB)
- Performance validation (fps, const usage)
- Security measures implemented
- CI/CD configuration
- Any considerations for deployment
- Follow-up tasks if any

---

*© 2025 SenaiVerse | Command: /feature-flutter | Claude Code System v2.0 (Flutter Edition)*
