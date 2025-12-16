# 🎨 Google Stitch Integration Guide

Convert Google Stitch HTML designs to production-ready Flutter and React Native code.

---

## 📋 Table of Contents

- [What is Google Stitch?](#what-is-google-stitch)
- [Quick Start](#quick-start)
- [Step-by-Step Guide](#step-by-step-guide)
- [Workflows Comparison](#workflows-comparison)
- [Output Structure](#output-structure)
- [Examples](#examples)
- [FAQ](#faq)

---

## What is Google Stitch?

[Google Stitch](https://labs.google.com/stitch) is an AI design tool from Google Labs that generates UI designs from text prompts or sketches.

**Key Features:**
- 🎨 Text-to-UI generation
- ✏️ Sketch-to-mockup conversion
- 📦 Export as HTML + TailwindCSS
- 🌙 Dark mode support

---

## Quick Start

### 1. Download from Stitch

After creating your design in Google Stitch, download the project. You'll get a folder like:

```
stitch_my_project/
├── screen_name/
│   ├── code.html    # HTML + TailwindCSS
│   └── screen.png   # Visual preview
└── another_screen/
    ├── code.html
    └── screen.png
```

### 2. Place in Your Project

Copy the Stitch folder into your Flutter or React Native project:

```bash
cp -r ~/Downloads/stitch_my_project ./your_project/
```

### 3. Run Conversion

**Flutter:**
```
/stitch-flutter ./stitch_my_project
```

**React Native:**
```
/stitch-reactnative ./stitch_my_project
```

**Done!** Check your `lib/` or `src/` folder for generated code.

---

## Step-by-Step Guide

### Step 1: Create Design in Google Stitch

1. Go to [labs.google.com/stitch](https://labs.google.com/stitch)
2. Enter a prompt like:
   ```
   Create a habit tracker dashboard with:
   - Progress ring showing completion
   - List of today's habits with checkboxes
   - Bottom navigation bar
   - Dark mode theme
   ```
3. Wait for Stitch to generate the design
4. Click **Download** to get the HTML files

### Step 2: Project Structure

Place the downloaded folder in your project root:

**Flutter:**
```
my_flutter_app/
├── lib/
├── test/
├── pubspec.yaml
└── stitch_habit_tracker/    ← Here
    ├── dashboard/
    │   ├── code.html
    │   └── screen.png
    ├── profile/
    │   ├── code.html
    │   └── screen.png
    └── settings/
        ├── code.html
        └── screen.png
```

**React Native:**
```
my_rn_app/
├── src/
├── package.json
└── stitch_habit_tracker/    ← Here
    ├── dashboard/
    │   ├── code.html
    │   └── screen.png
    └── ...
```

### Step 3: Choose Your Workflow

| Workflow | Command | Best For |
|----------|---------|----------|
| **Direct Conversion** | `/stitch-flutter` | Quick code generation |
| **Full Feature** | `/feature-flutter` | Complete implementation with tests |

### Step 4: Run the Conversion

**Option A: Direct Stitch Conversion**
```
/stitch-flutter ./stitch_habit_tracker
```

This will:
1. ✅ Read all `code.html` files
2. ✅ Extract design tokens (colors, fonts, spacing)
3. ✅ Generate theme files
4. ✅ Convert HTML → Flutter widgets
5. ✅ Create navigation setup
6. ✅ Run basic quality checks

**Option B: Full Feature with Auto-Detection**
```
/feature-flutter Implement habit tracker with all screens
```

This will:
1. ✅ Auto-detect `stitch_*` folder
2. ✅ Use Stitch as design foundation
3. ✅ Add business logic
4. ✅ Security review (OWASP)
5. ✅ Performance optimization
6. ✅ Generate comprehensive tests
7. ✅ Create documentation

### Step 5: Review Generated Code

Check your output:

**Flutter:**
```
lib/
├── screens/
│   ├── dashboard_screen.dart
│   ├── profile_screen.dart
│   └── settings_screen.dart
├── widgets/
│   ├── habit_card.dart
│   ├── progress_ring.dart
│   └── bottom_nav.dart
├── theme/
│   ├── app_colors.dart
│   ├── app_typography.dart
│   └── app_theme.dart
└── navigation/
    └── app_router.dart
```

**React Native (Expo Router):**
```
app/
├── _layout.tsx           # Root Stack layout
│
├── (auth)/               # Auth Group
│   ├── _layout.tsx       # Auth layout
│   ├── login.tsx         # /login
│   └── register.tsx      # /register
│
├── (app)/                # Main App Group (Tabs)
│   ├── _layout.tsx       # Tabs layout
│   ├── index.tsx         # / (Home)
│   ├── stats.tsx         # /stats
│   └── profile.tsx       # /profile
│
├── habit/
│   └── [id].tsx          # /habit/123 (Dynamic)
└── add-habit.tsx         # /add-habit (Modal)

components/
├── HabitCard.tsx
├── ProgressRing.tsx
└── BottomNav.tsx

theme/
├── colors.ts
├── typography.ts
└── index.ts
```

---

## Workflows Comparison

| Feature | `/stitch-*` | `/feature-*` |
|---------|-------------|--------------|
| **Speed** | Fast (~5 min) | Longer (~15-30 min) |
| **Stitch Required** | ✅ Yes | ❓ Optional (auto-detect) |
| **Theme Generation** | ✅ Yes | ✅ Yes |
| **Widget Generation** | ✅ Yes | ✅ Yes |
| **Business Logic** | ❌ No | ✅ Yes |
| **Security Review** | ❌ No | ✅ Yes |
| **Performance Check** | Basic | ✅ Full |
| **Tests Generated** | Basic | ✅ Comprehensive |
| **Documentation** | ❌ No | ✅ Yes |

### When to Use What?

| Scenario | Use |
|----------|-----|
| Just want the UI code from Stitch | `/stitch-flutter` |
| Building a complete feature | `/feature-flutter` |
| Have Stitch + need tests | `/feature-flutter` |
| No Stitch, building from scratch | `/feature-flutter` |
| Quick prototype | `/stitch-flutter` |

---

## Output Structure

### Theme Files (Extracted from Stitch)

**Flutter - `lib/theme/app_colors.dart`:**
```dart
class AppColors {
  static const primary = Color(0xFF2BEE79);
  static const backgroundLight = Color(0xFFF6F8F7);
  static const backgroundDark = Color(0xFF102217);
  static const surfaceDark = Color(0xFF1A2E22);
}
```

**React Native - `src/theme/colors.ts`:**
```typescript
export const colors = {
  primary: '#2BEE79',
  backgroundLight: '#F6F8F7',
  backgroundDark: '#102217',
  surfaceDark: '#1A2E22',
};
```

### Generated Widgets/Components

The converter extracts reusable patterns from Stitch:

- Cards with consistent styling
- Buttons with theme colors
- Input fields with proper styling
- Navigation components
- Progress indicators

---

## Examples

### Example 1: Simple Dashboard

**Stitch Folder:**
```
stitch_dashboard/
└── main/
    ├── code.html
    └── screen.png
```

**Command:**
```
/stitch-flutter ./stitch_dashboard
```

**Output:**
```
lib/
├── screens/main_screen.dart
├── theme/app_colors.dart
└── theme/app_theme.dart
```

### Example 2: Multi-Screen App

**Stitch Folder:**
```
stitch_habit_app/
├── home/
├── add_habit/
├── calendar/
├── profile/
└── statistics/
```

**Command:**
```
/stitch-flutter ./stitch_habit_app
```

**Output:**
```
lib/
├── screens/
│   ├── home_screen.dart
│   ├── add_habit_screen.dart
│   ├── calendar_screen.dart
│   ├── profile_screen.dart
│   └── statistics_screen.dart
├── widgets/
│   ├── habit_card.dart
│   ├── stat_card.dart
│   └── bottom_nav.dart
├── theme/
│   ├── app_colors.dart
│   ├── app_typography.dart
│   └── app_theme.dart
└── navigation/
    └── app_router.dart
```

### Example 3: Full Feature with Stitch

**Command:**
```
/feature-flutter Implement habit tracker with Stitch designs
```

**What Happens:**
1. Detects `stitch_habit_app/` folder
2. Extracts design tokens
3. Generates UI from Stitch
4. Adds state management (BLoC/Provider)
5. Implements business logic
6. Runs security audit
7. Optimizes performance
8. Generates tests
9. Creates documentation

---

## FAQ

### Q: What if I don't have a Stitch folder?

**A:** Use `/feature-flutter` without Stitch. The workflow will generate UI using AI without any HTML reference.

### Q: Can I use both Stitch and custom code?

**A:** Yes! Stitch provides the foundation. You can modify generated code and add your own logic.

### Q: What HTML format does Stitch use?

**A:** Stitch outputs HTML with TailwindCSS classes. The converter understands:
- TailwindCSS utility classes
- Responsive design patterns
- Dark mode configurations
- Custom color configurations

### Q: Are the generated files production-ready?

**A:** They're a solid foundation! You'll want to:
- Connect to your state management
- Add real data instead of placeholders
- Customize business logic
- Add unit tests for logic

### Q: What if Stitch design is incomplete?

**A:** The converter handles partial designs. Missing elements will be skipped, and you can add them manually later.

---

## Troubleshooting

### Stitch folder not detected

Make sure folder name starts with `stitch_`:
```
✅ stitch_my_app/
✅ stitch_dashboard/
❌ my_stitch_app/
❌ design_folder/
```

### Missing theme extraction

Check that `code.html` contains TailwindCSS config:
```html
<script>
  tailwind.config = {
    theme: {
      extend: {
        colors: {
          "primary": "#2bee79",
          ...
        }
      }
    }
  }
</script>
```

### Incomplete widget conversion

Some complex layouts may need manual adjustment. The converter handles:
- ✅ Flexbox layouts
- ✅ Basic grids
- ✅ Standard components
- ⚠️ Complex animations (may need tweaking)

---

## Next Steps

After conversion:

1. **Run the app:**
   ```bash
   flutter run  # or npm run ios
   ```

2. **Connect state management:**
   - Add Provider/BLoC/Riverpod (Flutter)
   - Add Zustand/Redux (React Native)

3. **Add real data:**
   - Replace placeholder text
   - Connect to APIs

4. **Run tests:**
   ```bash
   flutter test  # or npm test
   ```

---

**Need help?** Check the [Workflows Documentation](.agent/workflows/README.md) or [Agents Documentation](.agent/agents/README.md).
