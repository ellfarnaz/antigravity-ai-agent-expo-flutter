---
name: stitch-reactnative
description: Converts Google Stitch HTML designs to React Native components with theme extraction, component generation, and quality checks
---
<!-- 🌟 SenaiVerse - Claude Code Agent System v2.0 | React Native Edition | Stitch Workflow -->

# Stitch to React Native Conversion

> **🎨 Converting:** $ARGUMENTS

## Workflow Overview

This workflow converts Google Stitch HTML/TailwindCSS designs to production-ready React Native code.

---

## Phase 1: Design Analysis

1. **Locate Stitch Files**
   - Search for `stitch_*` folders or `*.html` files
   - Verify each folder has `code.html` and `screen.png`
   - List all screens found

2. **Extract Design Tokens** (@stitch-converter-reactnative)
   - Parse TailwindCSS config from HTML
   - Extract colors (primary, background, surface)
   - Extract typography (font family, sizes, weights)
   - Extract spacing values
   - Extract border radius values

---

## Phase 2: Code Generation

1. **Generate Theme Files** (@stitch-converter-reactnative)
   ```
   src/theme/
   ├── colors.ts
   ├── typography.ts
   ├── spacing.ts
   └── index.ts
   ```

2. **Generate Screen Components** (@stitch-converter-reactnative)
   - Parse HTML structure for each screen
   - Convert to React Native JSX
   - Apply extracted theme tokens
   - Generate functional components with TypeScript

3. **Generate Reusable Components** (@stitch-converter-reactnative)
   - Identify repeated patterns across screens
   - Extract as reusable components
   - Generate component files in `src/components/`

4. **Generate Navigation** (@stitch-converter-reactnative)
   - Setup React Navigation structure
   - Create stack/tab navigators
   - Generate bottom tab navigation if present

---

## Phase 3: Quality Assurance (Parallel) ⚡

Run ALL checks **in parallel**:

**1. Accessibility Check** (@a11y-enforcer-reactnative)
```
Execute in parallel:
- Validate accessibility props
- Check touch targets (44x44)
- Verify color contrast
```

**2. Design Token Compliance** (@design-token-guardian-reactnative)
```
Execute in parallel:
- Verify theme token usage
- Check for hardcoded values
- Validate StyleSheet patterns
```

**3. Performance Check** (@performance-prophet-reactnative)
```
Execute in parallel:
- Check component complexity
- Verify memoization
- Check for unnecessary re-renders
```

---

## Phase 4: Test Generation

**Generate Tests** (@test-generator-reactnative)
- Component tests with RNTL
- Snapshot tests for visual verification
- Unit tests for utilities

---

## Output

**Files Generated:**
```
src/
├── screens/           # From Stitch screens
├── components/        # Reusable components
├── theme/             # Extracted tokens
└── navigation/        # App navigator

__tests__/
├── screens/           # Screen tests
├── components/        # Component tests
└── __snapshots__/     # Snapshot files
```

**Summary Report:**
- Screens converted: X
- Components created: X
- Theme files: 4
- Tests generated: X
- Issues found: X (with fixes)

**Next Steps:**
1. Review generated code
2. Run `npm install`
3. Run `npm test`
4. Connect to state management
5. Replace placeholder data

---

## Commands

```bash
# After conversion
npm install
npm run lint
npm test
npm run ios  # or npm run android
```

---

*© 2025 SenaiVerse | Workflow: /stitch-reactnative | Design-to-Code v2.0*
