# 🤖 Antigravity AI Agents - Flutter & React Native

A comprehensive collection of **enterprise-grade** specialized AI agents and orchestration workflows for **Flutter** and **React Native/Expo** development, powered by Antigravity AI.

> **📊 Total: 17,000+ lines** of enterprise-grade AI agent code across 26 files.

## ✨ What's New (v2.4)

- 🎯 **Product Planning** - `/plan-product` workflow for idea-to-PRD transformation ← NEW!
- 🔗 **PRD Integration** - `/feature-*` auto-detects `product_requirements.md` ← NEW!
- 📄 **Workflow Guide** - Complete documentation for all 9 workflows ← NEW!
- 🔐 **Enterprise Security** - OWASP, Biometric, JWT/OAuth2/PKCE, Root Detection
- ⚡ **Advanced Performance** - Hermes, JSI, Shader Jank, Cold Start Prediction
- ♿ **WCAG 2.2** - Latest accessibility standards with automated testing
- 🧪 **Enterprise Testing** - State management, MSW, Factories, CI/CD
- 🏗️ **Modern Architecture** - Feature flags, i18n, Deep linking, Error tracking
- 🎨 **Google Stitch Integration** - Convert HTML designs to native code
- **⚡ Parallel Execution** - 2-3x faster reviews with simultaneous agents

---

## 📦 What's Included

This repository contains **17 specialized agents** and **9 orchestration workflows**.

### 🎯 Specialized Agents (17)

Each agent is an enterprise-grade domain expert:

#### Platform-Agnostic (1)
| Agent | Lines | Key Features |
|-------|-------|--------------|
| 🎯 **Product Planner** | ~400 | Brief-to-PRD, MVP scoping, Feature engineering |

#### Flutter Agents (8)
| Agent | Lines | Key Features |
|-------|-------|--------------|
| 🏗️ **Grand Architect** | 999 | CI/CD, Feature flags, i18n, Deep linking |
| 🔐 **Security Specialist** | 990 | OWASP, Biometric, JWT, OAuth2/PKCE |
| 🧪 **Test Generator** | 888 | State management, Dio mocking, Factories |
| ♿ **A11y Enforcer** | 787 | WCAG 2.2, Motion a11y, Dark mode |
| 🔮 **Performance Prophet** | 702 | Shader jank, Cold start, Predictive scoring |
| ⚡ **Performance Enforcer** | 698 | Impeller, Memory, Battery optimization |
| 🎨 **Design Token Guardian** | 697 | Dark mode, Animation tokens, Auto-fix |
| 🖼️ **Stitch Converter** | ~450 | HTML → Flutter widgets, Theme extraction |

#### React Native/Expo Agents (8)
| Agent | Lines | Key Features |
|-------|-------|--------------|
| 🏗️ **Grand Architect** | 1,018 | CI/CD, EAS Build, Feature flags |
| 🔐 **Security Specialist** | 1,003 | OWASP, Biometric, JWT, OAuth2/PKCE |
| 🧪 **Test Generator** | 915 | Zustand/Redux, MSW, Factories |
| 🎨 **Design Token Guardian** | 853 | Dark mode, Animation tokens, Auto-fix |
| ⚡ **Performance Enforcer** | 792 | Hermes, Reanimated, FlashList |
| ♿ **A11y Enforcer** | 763 | WCAG 2.2, Motion a11y, Focus management |
| 🔮 **Performance Prophet** | 720 | JSI/Bridge, Fabric, Cold start prediction |
| 🖼️ **Stitch Converter** | ~450 | HTML → React Native components |

### 🔄 Orchestration Workflows (9)

| Workflow | Purpose | Agents | Output |
|----------|---------|--------|--------|
| `/plan-product` | **Product discovery & PRD** | 2 | Requirements doc |
| `/feature-flutter` | Full feature implementation | 6+ | Code + Tests + Docs |
| `/feature-reactnative` | Full feature implementation | 6+ | Code + Tests + Docs |
| `/review-flutter` | Comprehensive code review | 5 parallel | Review report |
| `/review-reactnative` | Comprehensive code review | 5 parallel | Review report |
| `/test-flutter` | Test suite generation | 3 | Tests + CI/CD |
| `/test-reactnative` | Test suite generation | 3 | Tests + CI/CD |
| `/stitch-flutter` | **Stitch → Flutter** | 4 | Screens + Widgets |
| `/stitch-reactnative` | **Stitch → React Native** | 4 | Components + Theme |

---

## 🔄 Workflow Details

### 🎯 `/plan-product` (NEW!)
**Product Discovery & Planning** - Platform-agnostic.

```
/plan-product I want to build a habit tracker app
```

**What it does:**
1. **Vision Clarification** - Understand product goals
2. **Feature Engineering** - MVP prioritization (MoSCoW)
3. **Screen Mapping** - UI inventory with navigation
4. **Technical Architecture** - Stack recommendations
5. **Development Roadmap** - Sprint planning
6. **Memory Storage** - PRD saved for reference

**Output:** Comprehensive Product Requirements Document (PRD)

**Next Step:** Run `/feature-flutter` or `/feature-reactnative`

---

### 🎯 `/feature-flutter` & `/feature-reactnative`
**Full Feature Implementation** with enterprise-grade quality.

```
/feature-flutter Add user authentication with biometric support
```

**What it does:**
1. **Phase -1:** Auto-detect PRD from `/plan-product` (if exists)
2. **Phase 0:** Auto-detect Google Stitch designs (optional)
3. **Phase 1:** Grand Architect planning
4. **Phase 2:** Security audit (OWASP, JWT)
5. **Phase 3:** Implementation
6. **Phase 4:** Quality assurance (5 agents parallel)
7. **Phase 5:** Test generation + documentation

**Output:** Complete feature + security review + tests + docs

---

### 🔍 `/review-flutter` & `/review-reactnative`
**Comprehensive Code Review** with parallel execution.

```
/review-flutter Review the authentication module
```

**What it does (in parallel ⚡):**
- 🎨 Design token compliance
- ♿ Accessibility audit (WCAG 2.2)
- 🔐 Security vulnerability scan
- ⚡ Performance analysis
- 🧪 Test coverage check

**Output:** Review report with scores + actionable fixes

---

### 🧪 `/test-flutter` & `/test-reactnative`
**Test Suite Generation** with ROI-based prioritization.

```
/test-flutter Generate tests for CheckoutScreen
```

**What it does:**
- Widget/Component tests
- Unit tests for logic
- Integration tests
- State management tests
- API mocking patterns
- CI/CD pipeline setup

**Output:** Complete test suite + GitHub Actions config

---

### 🎨 `/stitch-flutter` & `/stitch-reactnative` (NEW!)
**Convert Google Stitch HTML designs to native code.**

```
/stitch-flutter ./stitch_my_project
```

**What it does:**
1. Read all `code.html` files from Stitch folder
2. Extract design tokens (colors, typography, spacing)
3. Generate theme files
4. Convert HTML → native widgets/components
5. Generate navigation setup
6. Run quality checks

**Output:** 
- Screens in `lib/screens/` or `src/screens/`
- Reusable widgets/components
- Theme files (colors, typography)
- Basic tests

**Auto-detection:** Feature workflows (`/feature-*`) automatically detect `stitch_*` folders and use them as design foundation!

---

## 🚀 Quick Start

### Installation

```bash
git clone https://github.com/ellfarnaz/antigravity-ai-agent-expo-flutter.git
cd antigravity-ai-agent-expo-flutter
./install-global.sh
```

### Usage Examples

```bash
# Feature with Stitch auto-detection
/feature-flutter Add dashboard screen

# Direct Stitch conversion
/stitch-flutter ./stitch_statistics_analytics

# Code review (parallel)
/review-flutter Review payment module

# Generate tests
/test-flutter Focus on UserProfile
```

---

## 🔐 Enterprise Features

### Security (OWASP Mobile Top 10)
- ✅ Biometric authentication security
- ✅ JWT token validation & rotation
- ✅ OAuth2/PKCE implementation
- ✅ Root/jailbreak detection

### Performance
- ✅ Hermes engine optimization (RN)
- ✅ Impeller renderer (Flutter)
- ✅ Shader compilation prediction
- ✅ Cold start optimization

### Testing & CI/CD
- ✅ State management testing
- ✅ API mocking (Dio, MSW)
- ✅ CI/CD templates
- ✅ Coverage thresholds (80%+)

---

## 📊 Statistics

| Metric | Value |
|--------|-------|
| Total Lines | **16,000+** |
| Total Agents | 17 (8 per platform + 1 agnostic) |
| Total Workflows | 9 (4 per platform + 1 agnostic) |
| Parallel Execution | ✅ 2-3x faster |
| Stitch Integration | ✅ Auto-detect |

---

## 📚 Documentation

- **[Workflow Guide](WORKFLOW_GUIDE.md)** - Complete usage flow & examples
- **[Agents Documentation](.agent/agents/README.md)** - 17 enterprise agents
- **[Workflows Documentation](.agent/workflows/README.md)** - 9 orchestration workflows
- **[Installation Guide](INSTALLATION.md)** - Detailed setup instructions
- **[Stitch Guide](STITCH_GUIDE.md)** - Google Stitch design conversion

---

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Open a Pull Request

---

## 📝 License

MIT License - see [LICENSE](LICENSE) for details.

---

## 🔗 Links

- [Antigravity AI](https://antigravity.google/)
- [Flutter](https://flutter.dev)
- [React Native](https://reactnative.dev)
- [Google Stitch](https://stitch.withgoogle.com/)

---

**Made with ❤️ for the mobile development community | v2.4 Enterprise Edition**
