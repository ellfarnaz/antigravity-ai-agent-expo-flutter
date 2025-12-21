---
name: feature-reactnative
description: Implements new React Native/Expo features using multi-agent orchestration workflow with enterprise-grade security, performance, and testing
---
<!-- 🌟 SenaiVerse - Claude Code Agent System v2.2 | React Native/Expo Edition | Enterprise -->

# Feature Implementation Workflow (React Native/Expo)

> **📋 Feature Request:** $ARGUMENTS

## Execution Plan

Execute the following multi-agent workflow for React Native/Expo development:

> [!TIP]
> **Starting a new project?** Run `/plan-product` first to generate a comprehensive Product Requirements Document (PRD) with features, screens, and architecture recommendations before using this workflow.

---

### Phase 0: Stitch Design Discovery (MANDATORY when stitch_* exists)

> [!IMPORTANT]
> When a `stitch_*` folder is detected, this phase is **MANDATORY** and must be completed before any code generation.

**Step 0.1: Folder Scanning**

1. Search for `stitch_*` folders in project root
2. For each folder found, list ALL subfolders (these represent screens)
3. For each screen folder, verify:
   - `code.html` exists (HTML + TailwindCSS design)
   - `screen.png` exists (visual reference)
4. Count total screens and document any missing files

**Step 0.2: Screen Inventory** (INVOKE: @grand-architect-reactnative)

Create a detailed inventory table:

```markdown
| # | Folder Name | Screen Name | Screen Type | React Native Output | Navigation |
|---|-------------|-------------|-------------|---------------------|------------|
| 1 | home/dashboard | Dashboard | Tab | app/(app)/index.tsx | Bottom Tabs |
| 2 | add_new_habit | Add Habit | Modal | app/add-habit.tsx | Stack Push |
| 3 | calendar_view | Calendar | Tab | app/(app)/calendar.tsx | Bottom Tabs |
| ... | ... | ... | ... | ... | ... |
```

**Screen Type Classification (Expo Router):**
- `Tab` → Bottom tab screens → `app/(app)/[name].tsx`
- `Modal` → Full-screen modals → `app/[name].tsx` (root level)
- `Detail` → Dynamic routes → `app/[name]/[id].tsx`
- `Auth` → Auth group → `app/(auth)/[name].tsx`
- `Form` → Settings screens → `app/settings/[name].tsx`

**Step 0.3: Design Token Extraction** (INVOKE: @stitch-converter-reactnative)

Parse ALL `code.html` files and extract:

```yaml
Colors:
  Primary: # (main accent color)
  Background: # (light & dark)
  Surface: # (cards, containers)
  Text: # (primary, secondary)
  Accents: # (additional colors)

Typography:
  Font Family: # (primary, secondary)
  Weights: # (300, 400, 500, 600, 700)
  Sizes: # (text scale from design)

Spacing:
  Scale: # (4, 8, 12, 16, 20, 24, 32, 40, 48)
  
Border Radius:
  Variants: # (sm, md, lg, xl, full)

Shadows:
  Presets: # (sm, md, lg, glow)

Animation:
  Durations: # (fast, normal, slow)
```

**Step 0.4: Component Identification** (INVOKE: @stitch-converter-reactnative)

Identify reusable UI patterns across screens:

```markdown
| Component | Used In | Description | Component Name |
|-----------|---------|-------------|----------------|
| Habit Card | Dashboard, Calendar | Card with checkbox, emoji, streak | HabitCard.tsx |
| Progress Ring | Dashboard, Stats | Circular progress indicator | ProgressRing.tsx |
| Stat Card | Dashboard, Profile | Icon + label + value | StatCard.tsx |
| ... | ... | ... | ... |
```

**Step 0.5: Navigation Structure** (INVOKE: @grand-architect-reactnative)

Define Expo Router navigation architecture:

```markdown
Navigation Type: Expo Router (file-based)

File Structure:
app/
├── _layout.tsx           # Root Stack
├── (auth)/               # Auth group
│   ├── _layout.tsx
│   ├── login.tsx
│   └── register.tsx
├── (app)/                # Main app group (with tabs)
│   ├── _layout.tsx       # Tab Navigator
│   ├── index.tsx         # Home/Dashboard
│   ├── stats.tsx         # Statistics
│   ├── calendar.tsx      # Calendar
│   └── profile.tsx       # Profile
├── add-habit.tsx         # Modal (root level)
├── habit/[id].tsx        # Dynamic route
├── settings/
│   ├── edit-profile.tsx
│   ├── change-password.tsx
│   └── notifications.tsx
└── onboarding/           # Onboarding flow
    └── index.tsx
```

---

### Phase 0.6: Artifact Generation (REQUIRED)

> [!CAUTION]
> Do NOT proceed to code generation without creating these artifacts. This ensures proper tracking and user visibility.

**Create task.md:**

```markdown
# [Feature Name] - Stitch to React Native Conversion

## Screens to Generate (X total)
- [ ] Screen 1: folder_name → app/(app)/screen.tsx
- [ ] Screen 2: folder_name → app/(auth)/screen.tsx
...

## Components to Extract (X total)
- [ ] Component 1: ComponentName.tsx
- [ ] Component 2: ComponentName.tsx
...

## Theme Files
- [ ] constants/Colors.ts
- [ ] constants/Typography.ts
- [ ] constants/Spacing.ts
- [ ] constants/Theme.ts

## Navigation Setup
- [ ] app/_layout.tsx (root)
- [ ] app/(app)/_layout.tsx (tabs)
- [ ] app/(auth)/_layout.tsx (auth)

## Quality Assurance
- [ ] Accessibility check (@a11y-enforcer-reactnative)
- [ ] Design token compliance (@design-token-guardian-reactnative)
- [ ] Performance check (@performance-prophet-reactnative)

## Tests
- [ ] Component tests (React Native Testing Library)
- [ ] Unit tests (Jest)
- [ ] E2E tests (Detox) - if applicable

## Verification
- [ ] npm install / yarn install
- [ ] npm run lint (0 warnings)
- [ ] npm test (all passing)
```

**Create implementation_plan.md:**

Document detailed implementation strategy with file-by-file breakdown.

---

### Phase 1: Planning & Analysis

1. **Grand Architect Analysis** (INVOKE: @grand-architect-reactnative)
   - Break down the feature into implementation steps
   - Analyze architectural impact on component tree
   - Identify affected files (src/ or app/ structure)
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

1. **Security Audit** (INVOKE: @security-specialist-reactnative)
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

2. **Generate Theme Files** (INVOKE: @stitch-converter-reactnative)
   ```
   constants/
   ├── Colors.ts
   ├── Typography.ts
   ├── Spacing.ts
   └── Theme.ts
   ```

3. **Generate Screen Components** (INVOKE: @stitch-converter-reactnative)
   - Parse HTML structure for each screen
   - Convert to React Native components
   - Apply extracted theme tokens
   - Use StyleSheet.create with theme constants
   - **Update task.md** as each screen is completed

4. **Generate Reusable Components** (INVOKE: @stitch-converter-reactnative)
   - Extract common patterns as components
   - Create components/ folder
   - Use React.memo where appropriate

5. **Create Navigation Structure** (INVOKE: @stitch-converter-reactnative)
   - Generate Expo Router file structure
   - Create layout files with proper navigators
   - Configure tab bar and stack navigators

6. **Platform-Specific Implementation** (if needed)
   - Implement native modules for iOS/Android
   - Handle Platform.OS specific code
   - Update app.json / expo config if needed
   - Use **JSI** for performance-critical native calls
   - **Configure deep linking** (Expo Linking)
   - **Setup push notifications** (Expo Notifications) if needed

### Phase 4: Quality Assurance (Parallel Execution) ⚡

Run ALL quality checks **in parallel** after implementation:

**1. Generate Tests** (INVOKE: @test-generator-reactnative)
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

**2. Accessibility Check** (INVOKE: @a11y-enforcer-reactnative)
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

**3. Performance Check** (INVOKE: @performance-prophet-reactnative)
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

**4. Design System Compliance** (INVOKE: @design-token-guardian-reactnative)
```
Execute in parallel:
- Verify theme/design token usage
- Check for hardcoded values
- Validate StyleSheet usage
- **Dark mode token validation**
- **Animation token compliance**
- **Auto-fix suggestions**
```

**5. Runtime Performance** (INVOKE: @performance-enforcer-reactnative)
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

5. **Finalize Artifacts**
   - Mark all items complete in task.md
   - Update implementation_plan.md if approach changed
   - Create walkthrough.md with screenshots/recordings

---

## Agent Orchestration Summary

```mermaid
flowchart TD
    A[/feature-reactnative] --> B{stitch_* exists?}
    B -->|Yes| C["@grand-architect-reactnative<br/>@stitch-converter-reactnative"]
    C --> D[Create task.md & plan]
    B -->|No| E[Phase 1: Planning]
    D --> E
    E --> F["@security-specialist-reactnative"]
    F --> G[Implementation]
    G --> H["QA (Parallel):<br/>5 agents simultaneously"]
    H --> I[Final Review]
```

---

## Success Criteria

✅ Feature implemented and working on iOS & Android
✅ All screens from Stitch folder converted
✅ Unit + component tests passing
✅ Accessibility compliant (accessibilityLabel, WCAG 2.2)
✅ No security vulnerabilities (OWASP compliant)
✅ Performance: No unnecessary re-renders
✅ Design system: No hardcoded values
✅ Bundle size within budget
✅ TypeScript: No errors
✅ Lint: Clean
✅ task.md fully marked complete
✅ **Hermes enabled**
✅ **CI/CD pipeline configured**
✅ **Error tracking enabled** (Sentry)

---

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

---

## Report

Provide summary:
- Stitch screens converted (X of Y)
- Files created/modified (app/ paths)
- package.json dependencies added
- Tests added (__tests__/ paths)
- Platform-specific changes (iOS/Android)
- Bundle size impact (+X KB)
- Performance validation (re-renders, memoization)
- Security measures implemented
- CI/CD configuration
- Any considerations for deployment
- Follow-up tasks if any

---

*© 2025 SenaiVerse | Command: /feature-reactnative | Claude Code System v2.2 (React Native/Expo Edition)*
