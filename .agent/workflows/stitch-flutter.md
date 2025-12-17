---
name: stitch-flutter
description: Converts Google Stitch HTML designs to Flutter widgets with theme extraction, component generation, and quality checks
---
<!-- 🌟 SenaiVerse - Claude Code Agent System v2.0 | Flutter Edition | Stitch Workflow -->

# Stitch to Flutter Conversion

> **🎨 Converting:** $ARGUMENTS

## Workflow Overview

This workflow converts Google Stitch HTML/TailwindCSS designs to production-ready Flutter code.

---

## Phase 1: Design Analysis

1. **Locate Stitch Files**
   - Search for `stitch_*` folders or `*.html` files
   - Verify each folder has `code.html` and `screen.png`
   - List all screens found

2. **Extract Design Tokens** (@stitch-converter-flutter)
   - Parse TailwindCSS config from HTML
   - Extract colors (primary, background, surface)
   - Extract typography (font family, sizes, weights)
   - Extract spacing values
   - Extract border radius values

---

## Phase 1.5: Create Folder Structure

> [!CAUTION]
> **Create folders BEFORE generating any code!**

```bash
# Identify features from stitch_* screens
# Then create structure:
mkdir -p lib/features/{auth,home,profile,statistics,calendar}/{screens,widgets,models}
mkdir -p lib/shared/{theme,widgets,utils,constants}
mkdir -p lib/routes

# Verify
tree lib/ -d -L 3
```

---

## Phase 2: Code Generation

1. **Generate Theme Files** (@stitch-converter-flutter)
   ```
   lib/shared/theme/
   ├── app_colors.dart
   ├── app_typography.dart
   ├── app_spacing.dart
   └── app_theme.dart
   ```

2. **Generate Screen Widgets** (@stitch-converter-flutter)
   - Parse HTML structure for each screen
   - Convert to Flutter widget tree
   - Apply extracted theme tokens
   - Generate StatelessWidget/StatefulWidget

3. **Generate Reusable Components** (@stitch-converter-flutter)
   - Identify repeated patterns across screens
   - Extract as reusable widgets
   - Generate feature-specific widgets in `lib/features/{feature}/widgets/`
   - Generate shared widgets in `lib/shared/widgets/`

4. **Generate Navigation** (@stitch-converter-flutter)
   - Create navigation structure
   - Setup routes for all screens
   - Generate bottom navigation if present

---

## Phase 3: Quality Assurance (Parallel) ⚡

Run ALL checks **in parallel**:

**1. Accessibility Check** (@a11y-enforcer-flutter)
```
Execute in parallel:
- Validate Semantics on interactive elements
- Check touch targets (48x48)
- Verify contrast ratios
```

**2. Design Token Compliance** (@design-token-guardian-flutter)
```
Execute in parallel:
- Verify all colors use Theme
- Check for hardcoded values
- Validate const usage
```

**3. Performance Check** (@performance-prophet-flutter)
```
Execute in parallel:
- Check widget tree complexity
- Verify const constructors
- Check for unnecessary rebuilds
```

---

## Phase 4: Test Generation

**Generate Tests** (@test-generator-flutter)
- Widget tests for each screen
- Widget tests for reusable components
- Golden tests for visual verification

---

## Output

**Files Generated:**
```
lib/
├── features/          # Feature-based organization
│   ├── {feature}/
│   │   ├── screens/   # Feature screens
│   │   └── widgets/   # Feature-specific widgets
├── shared/
│   ├── theme/         # Extracted tokens
│   └── widgets/       # Shared components
└── routes/            # Navigation

test/
├── features/          # Feature tests
└── shared/            # Shared tests
```

**Summary Report:**
- Screens converted: X
- Widgets created: X
- Theme files: 4
- Tests generated: X
- Issues found: X (with fixes)

**Next Steps:**
1. Review generated code
2. Run `flutter pub get`
3. Run `flutter test`
4. Connect to state management
5. Replace placeholder data

---

## Commands

```bash
# After conversion
flutter pub get
flutter analyze
flutter test
flutter run
```

---

*© 2025 SenaiVerse | Workflow: /stitch-flutter | Design-to-Code v2.0*
