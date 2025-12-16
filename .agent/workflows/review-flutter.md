---
name: review-flutter
description: Comprehensive multi-agent code review for Flutter covering design, accessibility, security, performance, and testing with enterprise-grade analysis
---
<!-- 🌟 SenaiVerse - Claude Code Agent System v2.0 | Flutter Edition | PARALLEL EXECUTION | Enterprise -->

# Comprehensive Code Review

Reviewing: $ARGUMENTS

## 🔄 Multi-Agent Review Process (Parallel Execution)

Execute the following reviews **in parallel** for maximum speed.

### Phase 1: Independent Parallel Reviews ⚡

Run ALL of these **simultaneously** (no dependencies):

#### 1. Design System Compliance (@design-token-guardian-flutter)
**Execute in parallel:**
- Check for hardcoded colors, spacing, typography in widgets
- Validate Theme.of(context) usage
- Check const constructor usage (performance)
- Verify Material Design 3 / Cupertino compliance
- **Dark mode token validation**
- **Animation/motion token compliance**
- **Responsive design tokens**
- Report violations with **auto-fix suggestions**

#### 2. Accessibility Audit (@a11y-enforcer-flutter)
**Execute in parallel:**
- Validate Semantics widgets presence
- Check touch target sizes (minimum 48x48dp)
- Verify color contrast ratios (**WCAG 2.2 AA**)
- Test screen reader compatibility (TalkBack/VoiceOver)
- Check for MergeSemantics / ExcludeSemantics usage
- **Motion/cognitive accessibility**
- **Keyboard/focus management**
- **Dark mode accessibility**
- **Automated testing integration** (accessibility_scanner)

#### 3. Security Analysis (@security-specialist-flutter)
**Execute in parallel** (if code involves auth, data handling, or API calls):
- Check for FlutterSecureStorage usage (not SharedPreferences for sensitive data)
- Validate secure communication (HTTPS, certificate pinning)
- Check for exposed secrets in code
- Review platform channel security
- Validate input sanitization
- Check Android manifest / iOS Info.plist security settings
- **Biometric authentication security**
- **JWT token validation & rotation**
- **OAuth2/PKCE implementation**
- **Root/jailbreak detection**
- **Screenshot prevention** for sensitive screens
- **WebView XSS prevention**
- **GDPR/privacy compliance**

#### 4. Performance Analysis (@performance-prophet-flutter)
**Execute in parallel:**
- Predict build() method performance
- Check for unnecessary rebuilds (setState anti-patterns)
- Validate const constructor usage
- Analyze widget tree complexity
- Check dispose() implementation for controllers
- Verify ListView.builder usage (not ListView for large lists)
- Check for memory leaks
- **Shader compilation jank prediction**
- **Impeller vs Skia analysis**
- **Navigation performance prediction**
- **Cold start impact analysis**
- **Network waterfall detection**
- **Layout thrashing detection**
- **Predictive scoring** with confidence levels

#### 5. Test Coverage Analysis (@test-generator-flutter)
**Execute in parallel:**
- Assess current test coverage (widget, unit, integration)
- Identify untested widget paths
- Check for golden tests on complex UI
- Recommend additional tests
- Verify testWidgets patterns
- **State management testing** (Provider/Bloc/Riverpod)
- **API mocking patterns** (Dio interceptors)
- **Test data factories** (Faker)
- **CI/CD integration** readiness
- **Accessibility testing** coverage

#### 6. Runtime Performance (@performance-enforcer-flutter)
**Execute in parallel:**
- Memory leak detection
- Dispose pattern validation
- Widget rebuild optimization
- Battery/power consumption check
- Network request efficiency

> **⚡ Performance:** All 6 agents run simultaneously (~5-7 min vs ~18-25 min sequential)

---

### Phase 2: Code Quality Checks (Sequential, After Phase 1)

After parallel reviews complete:

#### 6. Code Quality (Dart/Flutter Specific)
- Run `flutter analyze` check
- Validate Dart null safety
- Check for code duplication
- Review error handling (try-catch, ErrorWidget)
- Verify proper async/await usage
- Check for TODO/FIXME comments
- **Verify Sentry/error tracking** integration

#### 7. Platform-Specific Review
- Verify Material (Android) vs Cupertino (iOS) widgets
- Check platform-specific code (Platform.isIOS)
- Review platform channel implementations
- Validate AndroidManifest.xml and Info.plist settings
- **Deep linking configuration**
- **Push notification setup**

---

## 📋 Consolidated Report

Aggregate all parallel review results:

### 🚨 CRITICAL ISSUES (must fix before merge):
- Security vulnerabilities (OWASP violations)
- Accessibility violations (App Store risk)
- Performance issues (< 60fps, shader jank)
- Missing dispose() calls (memory leaks)
- Hardcoded sensitive data (API keys, secrets)
- **Missing biometric security** for sensitive features
- **JWT token vulnerabilities**

### ⚠️ WARNINGS (should fix):
- Missing const constructors
- Non-optimal widget patterns
- Missing Semantics labels
- Hardcoded colors/sizes
- Insufficient test coverage
- **Missing dark mode support**
- **Cold start optimization needed**

### 💡 SUGGESTIONS (nice to have):
- Code organization improvements
- Additional golden tests
- Performance micro-optimizations
- Documentation enhancements
- **Feature flag implementation**
- **Analytics event tracking**

### ✅ PASSES:
- [List what's implemented well]
- Theme usage ✓
- Accessibility compliance ✓
- Test coverage ✓
- Security best practices ✓
- **Impeller optimization ✓**
- **CI/CD configured ✓**

**FLUTTER ANALYZE:** Pass/Fail (X issues)

**PERFORMANCE SCORE:** X/10 (based on predictive analysis)

**SECURITY SCORE:** X/10 (based on OWASP compliance)

**OVERALL SCORE:** X/10

**RECOMMENDATION:** 
- ✅ **Approve** - Ready to merge
- ⚠️ **Request Changes** - Fix warnings first
- ❌ **Block** - Critical issues must be resolved

### Deployment Checklist
- [ ] `flutter analyze` passes
- [ ] All tests pass (`flutter test`)
- [ ] APK/IPA size within budget
- [ ] Tested on iOS and Android
- [ ] No security vulnerabilities
- [ ] Accessibility compliant (WCAG 2.2)
- [ ] 60fps maintained
- [ ] **Impeller enabled/tested**
- [ ] **Error tracking configured** (Sentry)
- [ ] **CI/CD pipeline passing**

---

## ⏱️ Execution Time

**Sequential:** ~15-20 minutes  
**Parallel:** ~5-7 minutes  
**Time Saved:** ~10-13 minutes per review! 🚀

---

*© 2025 SenaiVerse | Command: /review-flutter | Claude Code System v2.0 (Flutter Edition)*
