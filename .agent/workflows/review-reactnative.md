---
name: review-reactnative
description: Comprehensive multi-agent code review for React Native/Expo covering design, accessibility, security, performance, and testing with enterprise-grade analysis
---
<!-- 🌟 SenaiVerse - Claude Code Agent System v2.0 | React Native Edition | PARALLEL EXECUTION | Enterprise -->

# Comprehensive Code Review

> **🔍 Reviewing:** $ARGUMENTS

## 🔄 Multi-Agent Review Process (Parallel Execution)

Execute the following reviews **in parallel** for maximum speed.

### Phase 1: Independent Parallel Reviews ⚡

Run ALL of these **simultaneously** (no dependencies):

#### 1. Design System Compliance (@design-token-guardian-reactnative)
**Execute in parallel:**
- Check for hardcoded colors, spacing, typography in components
- Validate theme/design token usage
- Check for inline styles vs StyleSheet
- Verify responsive design patterns
- **Dark mode token validation**
- **Animation/motion token compliance**
- **Responsive design tokens**
- Report violations with **auto-fix suggestions**

#### 2. Accessibility Audit (@a11y-enforcer-reactnative)
**Execute in parallel:**
- Validate accessibility props (accessibilityLabel, accessibilityRole)
- Check touch target sizes (minimum 44x44)
- Verify color contrast ratios (**WCAG 2.2 AA**)
- Test screen reader compatibility (VoiceOver/TalkBack)
- Check keyboard navigation
- **Motion/cognitive accessibility**
- **Focus management**
- **Dark mode accessibility**
- **Automated testing integration**

#### 3. Security Analysis (@security-specialist-reactnative)
**Execute in parallel** (if code involves auth, data handling, or API calls):
- Check for AsyncStorage vs SecureStore (sensitive data)
- Validate secure communication (HTTPS, SSL pinning)
- Check for exposed secrets/API keys
- Review native module security
- Validate input sanitization
- Check for hardcoded credentials
- **Biometric authentication security** (expo-local-authentication)
- **JWT token validation & rotation**
- **OAuth2/PKCE implementation** (expo-auth-session)
- **Root/jailbreak detection** (jail-monkey)
- **Screenshot prevention** for sensitive screens
- **WebView XSS prevention**
- **GDPR/privacy compliance**

#### 4. Performance Analysis (@performance-prophet-reactnative)
**Execute in parallel:**
- Check for unnecessary re-renders (React.memo, useMemo, useCallback)
- Analyze FlatList/SectionList optimization
- Check for memory leaks (useEffect cleanup)
- Verify image optimization
- Check JS thread performance
- Review bridge communication efficiency
- **JSI vs Bridge analysis**
- **Fabric renderer prediction**
- **Hermes engine optimization**
- **Navigation performance prediction**
- **Cold start impact analysis**
- **Network waterfall detection**
- **Predictive scoring** with confidence levels

#### 5. Test Coverage Analysis (@test-generator-reactnative)
**Execute in parallel:**
- Assess current test coverage (Jest, RNTL, Detox)
- Identify untested component paths
- Check for snapshot tests
- Recommend additional tests
- Verify test patterns and best practices
- **State management testing** (Redux/Zustand/Context)
- **API mocking patterns** (MSW)
- **Test data factories** (Faker)
- **CI/CD integration** readiness
- **Accessibility testing** coverage

#### 6. Runtime Performance (@performance-enforcer-reactnative)
**Execute in parallel:**
- Memory leak detection (useEffect cleanup)
- Hermes optimization checks
- FlashList/FlatList optimization
- Reanimated usage validation
- Bridge/JSI efficiency

> **⚡ Performance:** All 6 agents run simultaneously (~4-6 min vs ~15-20 min sequential)

---

### Phase 2: Code Quality Checks (Sequential, After Phase 1)

After parallel reviews complete:

#### 6. Code Quality (JavaScript/TypeScript Specific)
- Run ESLint check
- Validate TypeScript types (if applicable)
- Check for code duplication
- Review error handling (try-catch, Error Boundaries)
- Verify proper async/await usage
- Check for console.log statements
- **Verify Sentry/error tracking** integration

#### 7. Platform-Specific Review
- Check Platform.OS usage (iOS vs Android)
- Review platform-specific components
- Validate native module implementations
- Check expo.config.js / app.json settings
- **Deep linking configuration** (Expo Linking)
- **Push notification setup** (Expo Notifications)
- **Hermes engine enabled**

---

## 📋 Consolidated Report

Aggregate all parallel review results:

### 🚨 CRITICAL ISSUES (must fix before merge):
- Security vulnerabilities (OWASP violations)
- Accessibility violations (App Store risk)
- Performance issues (laggy UI, bridge saturation)
- Memory leaks (missing cleanup)
- Exposed sensitive data (API keys, secrets)
- **Missing biometric security** for sensitive features
- **JWT token vulnerabilities**

### ⚠️ WARNINGS (should fix):
- Unnecessary re-renders (missing memo)
- Non-optimal component patterns
- Missing accessibility labels
- Hardcoded values
- Insufficient test coverage
- **Missing dark mode support**
- **Hermes not enabled**
- **FlashList not used for large lists**

### 💡 SUGGESTIONS (nice to have):
- Code organization improvements
- Additional E2E tests (Detox)
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
- **Hermes enabled ✓**
- **JSI used for animations ✓**
- **CI/CD configured ✓**

**ESLINT:** Pass/Fail (X issues)

**PERFORMANCE SCORE:** X/10 (based on predictive analysis)

**SECURITY SCORE:** X/10 (based on OWASP compliance)

**OVERALL SCORE:** X/10

**RECOMMENDATION:** 
- ✅ **Approve** - Ready to merge
- ⚠️ **Request Changes** - Fix warnings first
- ❌ **Block** - Critical issues must be resolved

### Deployment Checklist
- [ ] ESLint passes
- [ ] All tests pass (Jest + Detox)
- [ ] Bundle size within budget
- [ ] Tested on iOS and Android
- [ ] No security vulnerabilities
- [ ] Accessibility compliant (WCAG 2.2)
- [ ] Smooth performance (60fps)
- [ ] **Hermes enabled**
- [ ] **Error tracking configured** (Sentry)
- [ ] **CI/CD pipeline passing**

---

## ⏱️ Execution Time

**Sequential:** ~12-18 minutes  
**Parallel:** ~4-6 minutes  
**Time Saved:** ~8-12 minutes per review! 🚀

---

*© 2025 SenaiVerse | Command: /review-reactnative | Claude Code System v2.0 (React Native/Expo Edition)*
