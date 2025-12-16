# 📦 Installation Guide

This guide explains how to install Antigravity AI Agents and Workflows for Flutter and React Native development.

## 📋 Table of Contents

- [Quick Start](#quick-start)
- [Global Installation](#global-installation)
- [Project Installation](#project-installation)
- [Manual Installation](#manual-installation)
- [Verification](#verification)
- [Troubleshooting](#troubleshooting)

---

## 🚀 Quick Start

**TL;DR:** Run this for global installation:

```bash
git clone https://github.com/yourusername/antigravity-ai-agent-expo-flutter.git
cd antigravity-ai-agent-expo-flutter
./install-global.sh
```

---

## 🌍 Global Installation

Install agents and workflows **globally** to make them available in **all your Antigravity AI projects**.

### Prerequisites

- Antigravity AI installed on your system
- Terminal/Command line access
- Git installed

> **💡 First-time installer?** Don't worry! The script will automatically create `global_agents/` and `global_workflows/` directories if they don't exist.

### Installation Steps

1. **Clone the repository:**

   ```bash
   git clone https://github.com/yourusername/antigravity-ai-agent-expo-flutter.git
   cd antigravity-ai-agent-expo-flutter
   ```

2. **Run the installer:**

   ```bash
   ./install-global.sh
   ```

   The script will:
   - Check if Antigravity is installed
   - Show you what will be installed (16 agents + 8 workflows)
   - Ask for confirmation
   - Copy all files to `~/.gemini/antigravity/global_agents/` and `~/.gemini/antigravity/global_workflows/`

3. **Verify installation:**

   Open any project in Antigravity AI and type `/` - you should see:
   - `/feature-flutter`
   - `/feature-reactnative`
   - `/review-flutter`
   - `/review-reactnative`
   - `/test-flutter`
   - `/test-reactnative`
   - `/stitch-flutter`
   - `/stitch-reactnative`

### What Gets Installed Globally?

```
~/.gemini/
├── GEMINI.md                    # Global rules (auto-installed)
│
└── antigravity/
    ├── global_agents/
    │   ├── a11y-enforcer-flutter.md
    │   ├── a11y-enforcer-reactnative.md
    │   ├── design-token-guardian-flutter.md
    │   ├── design-token-guardian-reactnative.md
    │   ├── grand-architect-flutter.md
    │   ├── grand-architect-reactnative.md
    │   ├── performance-enforcer-flutter.md
    │   ├── performance-enforcer-reactnative.md
    │   ├── performance-prophet-flutter.md
    │   ├── performance-prophet-reactnative.md
    │   ├── security-specialist-flutter.md
    │   ├── security-specialist-reactnative.md
    │   ├── stitch-converter-flutter.md
    │   ├── stitch-converter-reactnative.md
    │   ├── test-generator-flutter.md
    │   └── test-generator-reactnative.md
    │
    └── global_workflows/
        ├── feature-flutter.md
        ├── feature-reactnative.md
        ├── review-flutter.md
        ├── review-reactnative.md
        ├── stitch-flutter.md
        ├── stitch-reactnative.md
        ├── test-flutter.md
        └── test-reactnative.md
```

### Benefits of Global Installation

✅ **Available Everywhere** - Use in any project without re-installing  
✅ **Single Source of Truth** - One location to update agents  
✅ **Cleaner Projects** - No `.agent` folder in your project repos  
✅ **Consistent Experience** - Same agents across all projects  

### Downsides of Global Installation

❌ **No Version Control** - Can't track agent changes with git  
❌ **Team Alignment** - Team members need to install separately  
❌ **Harder to Customize** - Project-specific modifications affect all projects  

---

## 📦 Project Installation

Install agents and workflows for a **specific project only**. Best for team projects where everyone should use the same agent configuration.

### Prerequisites

- A Flutter or React Native project
- Terminal/Command line access
- Git installed

### Installation Steps

1. **Clone the repository (if you haven't already):**

   ```bash
   git clone https://github.com/yourusername/antigravity-ai-agent-expo-flutter.git
   ```

2. **Navigate to your project:**

   ```bash
   cd /path/to/your-project
   ```

3. **Run the project installer:**

   ```bash
   /path/to/antigravity-ai-agent-expo-flutter/install-project.sh
   ```

   The script will:
   - Check if you're in a valid project
   - Show you what will be installed
   - Ask for confirmation if `.agent` directory exists
   - Copy all files to your project's `.agent/` directory

4. **Commit to version control:**

   ```bash
   git add .agent/
   git commit -m "Add Antigravity AI agents and workflows"
   git push
   ```

   Now your entire team can use the same agents!

### What Gets Installed in Your Project?

```
your-project/
├── .agent/
│   ├── rules.md                  # Project rules (auto-installed)
│   │
│   ├── agents/
│   │   ├── README.md
│   │   ├── (8 Flutter agents)
│   │   └── (8 React Native agents)
│   │
│   └── workflows/
│       ├── README.md
│       ├── (4 Flutter workflows)
│       └── (4 React Native workflows)
│
├── (your project files)
└── package.json / pubspec.yaml
```

### Benefits of Project Installation

✅ **Version Controlled** - Track changes with git  
✅ **Team Collaboration** - Everyone uses same agent version  
✅ **Project-Specific** - Customize agents for this project  
✅ **Isolated** - Changes don't affect other projects  

### Downsides of Project Installation

❌ **Multiple Installations** - Need to install in each project  
❌ **Larger Repo** - Adds files to your repository  
❌ **Manual Updates** - Need to update each project separately  

---

## 🔧 Manual Installation

If you prefer manual control or the scripts don't work:

### Global Manual Installation

```bash
# Copy agents
cp .agent/agents/*.md ~/.gemini/antigravity/global_agents/

# Copy workflows
cp .agent/workflows/*.md ~/.gemini/antigravity/global_workflows/
```

### Project Manual Installation

```bash
# In your project directory
mkdir -p .agent/agents
mkdir -p .agent/workflows

# Copy agents
cp /path/to/repo/.agent/agents/* .agent/agents/

# Copy workflows
cp /path/to/repo/.agent/workflows/* .agent/workflows/
```

---

## ✅ Verification

### Verify Global Installation

1. Open **any** project in Antigravity AI
2. Type `/` in the chat
3. You should see the workflows available

### Verify Project Installation

1. Open **your specific** project in Antigravity AI
2. Type `/` in the chat
3. You should see the workflows available
4. Check that `.agent/` directory exists in your project

### Test the Installation

Try running a workflow:

```
/feature-flutter Create a simple counter widget
```

The workflow should:
1. Start the multi-agent orchestration
2. Show Grand Architect planning
3. Generate implementation plan
4. Ask for your approval

If this works, installation is successful! 🎉

---

## 🔍 Troubleshooting

### "Workflow not found"

**Problem:** Typing `/feature-flutter` doesn't show the workflow.

**Solutions:**
1. Check installation location:
   - Global: `ls ~/.gemini/antigravity/global_workflows/`
   - Project: `ls .agent/workflows/`

2. Restart Antigravity AI

3. Make sure files have `.md` extension

### "Agent not executing"

**Problem:** Workflow runs but agents don't seem to work.

**Solutions:**
1. Check agents are installed:
   - Global: `ls ~/.gemini/antigravity/global_agents/`
   - Project: `ls .agent/agents/`

2. Verify file format (should be markdown with YAML frontmatter)

3. Check file permissions: `chmod 644 .agent/**/*.md`

### Scripts won't run

**Problem:** `./install-global.sh` gives "Permission denied"

**Solution:**
```bash
chmod +x install-global.sh install-project.sh
./install-global.sh
```

### Antigravity directory not found

**Problem:** Script says "Antigravity global directory not found"

**Solutions:**
1. Make sure Antigravity AI is installed
2. Check if directory exists: `ls ~/.gemini/antigravity/`
3. Create manually if needed: `mkdir -p ~/.gemini/antigravity/global_{agents,workflows}`

---

## 🔄 Updating

### Update Global Installation

```bash
cd antigravity-ai-agent-expo-flutter
git pull
./install-global.sh
```

### Update Project Installation

```bash
cd antigravity-ai-agent-expo-flutter
git pull
cd /path/to/your-project
/path/to/antigravity-ai-agent-expo-flutter/install-project.sh
```

---

## 🆘 Need Help?

- 📖 [Main README](../README.md)
- 🤖 [Agents Documentation](.agent/agents/README.md)
- 🔄 [Workflows Documentation](.agent/workflows/README.md)
- 🐛 [Report Issues](https://github.com/yourusername/antigravity-ai-agent-expo-flutter/issues)

---

**Happy installing! 🚀**
