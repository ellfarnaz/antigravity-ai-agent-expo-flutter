---
name: feature-reactnative
description: Implements new React Native/Expo features using multi-agent orchestration workflow with enterprise-grade security, performance, and testing
---
<!-- 🌟 SenaiVerse - Claude Code Agent System v2.0 | React Native/Expo Edition | Enterprise -->

# Feature Implementation Workflow (React Native/Expo)

Implements: $ARGUMENTS

## Execution Plan

Execute the following multi-agent workflow for React Native/Expo development:

### Phase 0: Design Source Detection (Optional)

**Check for Google Stitch Designs:**
- Look for folders: `stitch_*`, `design/`, `ui/`
- Look for files: `*.html` with TailwindCSS

**If Stitch designs found:**
1. Invoke @stitch-converter-reactnative
2. Extract design tokens (colors, typography, spacing)
3. Generate theme files and base components
4. Use as foundation for implementation

**If no Stitch designs:**
- Continue with AI-generated implementation (Phase 1)

---

### Phase 1: Planning & Analysis

1. **Grand Architect Analysis** (@grand-architect-reactnative)
   - Break down the feature into implementation steps
   - Analyze architectural impact on component tree
   - Identify affected files (src/ structure)
   - Determine state management approach (Redux/Context/Zustand)
   - Assess complexity and risks
   - **Plan CI/CD integration** (GitHub Actions, EAS Build)
   - **Consider feature flags** for gradual rollout
   - **Plan analytics events** for tracking

2. **Feature Impact Assessment**
   - Estimate implementation time
   - Identify package.json dependencies needed
   - Determine if Expo SDK modules required
   - Check if platform-specific code needed (iOS/Android)
   - Assess breaking changes
   - **Plan i18n support** (react-i18next) if user-facing text

### Phase 2: Security & Architecture Review

1. **Security Audit** (@security-specialist-reactnative)
   If feature involves user data, auth, payments, or sensitive operations:
   - **OWASP Mobile Top 10** compliance check
   - Review AsyncStorage vs SecureStore usage
   - Check native module security
   - **Biometric authentication** implementation (expo-local-authentication)
   - **JWT token handling** (validation, rotation)
   - **OAuth2/PKCE** for external auth (expo-auth-session)
   - **Root/jailbreak detection** (jail-monkey)
   - **Screenshot prevention** for payment screens
   - **GDPR compliance** for user data

2. **State Management Planning**
   - Determine state architecture (Redux Toolkit, Context, Zustand)
   - Plan state integration
   - Design data flow and re-render optimization
   - Identify memoization opportunities (React.memo, useMemo, useCallback)
   - **Plan error tracking** (Sentry integration)

### Phase 3: Implementation

1. **Update Dependencies**
   - Add required packages to package.json
   - Run `npm install` or `yarn install`
   - Check Expo SDK compatibility
   - **Enable Hermes** if not already (significant performance boost)

2. **Create Feature Structure**
   - Generate feature folder structure (components, hooks, screens)
   - Create components, screens, hooks
   - Follow project conventions from CLAUDE.md

3. **Write Core Logic**
   - Implement business logic
   - Add proper TypeScript types
   - Follow design system tokens (no hardcoded values)
   - Use React.memo where appropriate
   - **Optimize for Hermes** bytecode compilation

4. **Platform-Specific Implementation** (if needed)
   - Implement native modules for iOS/Android
   - Handle Platform.OS specific code
   - Update app.json / expo config if needed
   - Use **JSI** for performance-critical native calls
   - **Configure deep linking** (Expo Linking)
   - **Setup push notifications** (Expo Notifications) if needed

### Phase 4: Quality Assurance (Parallel Execution) ⚡

Run ALL quality checks **in parallel** after implementation:

**1. Generate Tests** (@test-generator-reactnative)
```
Execute in parallel:
- Component tests (React Native Testing Library)
- Unit tests for business logic
- Integration tests if critical flow
- E2E tests with Detox (if applicable)
- **State management tests** (Redux/Zustand/Context)
- **API mocking** (MSW - Mock Service Worker)
- **Test data factories** (Faker)
- **Snapshot tests**
```

**2. Accessibility Check** (@a11y-enforcer-reactnative)
```
Execute in parallel:
- Validate accessibility props
- Check touch target sizes (44x44 minimum)
- Verify color contrast (WCAG 2.2 AA)
- Test with screen readers (VoiceOver/TalkBack)
- **Motion/cognitive accessibility**
- **Keyboard focus management**
- **Dark mode accessibility**
```

**3. Performance Check** (@performance-prophet-reactnative)
```
Execute in parallel:
- Check for unnecessary re-renders
- Validate memo/useMemo/useCallback usage
- Check useEffect cleanup
- Verify FlatList optimization
- Ensure smooth performance
- **JSI vs Bridge analysis**
- **Hermes bytecode optimization**
- **Cold start impact analysis**
- **Network waterfall detection**
```

**4. Design System Compliance** (@design-token-guardian-reactnative)
```
Execute in parallel:
- Verify theme/design token usage
- Check for hardcoded values
- Validate StyleSheet usage
- **Dark mode token validation**
- **Animation token compliance**
- **Auto-fix suggestions**
```

**5. Runtime Performance** (@performance-enforcer-reactnative)
```
Execute in parallel:
- Memory leak detection (useEffect cleanup)
- Hermes optimization checks
- FlashList/FlatList optimization
- Reanimated usage validation
- Bridge/JSI efficiency
```

> **⚡ Performance:** All 5 quality checks run simultaneously (~3-4 min vs ~10-12 min sequential)

### Phase 5: Final Review

1. **Code Review** (/review-reactnative)
   - Run comprehensive React Native review
   - Fix any issues found
   - Run `npm run lint`
   - Fix TypeScript errors

2. **Build Validation**
   - Test on iOS simulator/device
   - Test on Android emulator/device
   - Verify bundle size with `npx react-native-bundle-visualizer`
   - **Verify Hermes is enabled**
   - **Consider FlashList** for large lists

3. **Documentation**
   - Add inline comments for complex logic
   - Update CLAUDE.md if architectural changes
   - Document any platform-specific behavior

4. **CI/CD Setup** (if new feature)
   - Add to GitHub Actions workflow
   - Configure EAS Build
   - Setup automated testing

## Success Criteria

✅ Feature implemented and working on iOS & Android
✅ Unit + component tests passing
✅ Accessibility compliant (accessibilityLabel, WCAG 2.2)
✅ No security vulnerabilities (OWASP compliant)
✅ Performance: No unnecessary re-renders
✅ Design system: No hardcoded values
✅ Bundle size within budget
✅ TypeScript: No errors
✅ Lint: Clean
✅ **Hermes enabled**
✅ **CI/CD pipeline configured**
✅ **Error tracking enabled** (Sentry)

## Commands to Run

```bash
# Add dependencies
npm install
# or
yarn install

# Run tests
npm test

# Run tests with coverage
npm test -- --coverage

# Lint
npm run lint

# Type check
npm run type-check

# Run on iOS
npm run ios

# Run on Android
npm run android

# Build for production
eas build --platform all

# Check Hermes status
npx react-native info | grep Hermes

# Bundle analysis
npx react-native-bundle-visualizer
```

## Report

Provide summary:
- Files created/modified (src/ paths)
- package.json dependencies added
- Tests added (\_\_tests\_\_ paths)
- Platform-specific changes (iOS/Android)
- Bundle size impact (+X KB)
- Performance validation (re-renders, memoization)
- Security measures implemented
- CI/CD configuration
- Any considerations for deployment
- Follow-up tasks if any

---

*© 2025 SenaiVerse | Command: /feature-reactnative | Claude Code System v2.0 (React Native/Expo Edition)*
