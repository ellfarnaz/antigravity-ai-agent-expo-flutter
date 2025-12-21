# 📦 Installation Guide for Windows

This guide explains how to install Antigravity AI Agents and Workflows for Flutter and React Native development on **Windows**.

## 📋 Table of Contents

- [Prerequisites](#prerequisites)
- [Global Installation](#global-installation)
- [Project Installation](#project-installation)
- [Manual Installation](#manual-installation)
- [Verification](#verification)
- [Troubleshooting](#troubleshooting)

---

## 🔧 Prerequisites

### System Requirements

- **Windows 10/11** (64-bit)
- **Antigravity AI** installed
- **Git for Windows** ([Download](https://git-scm.com/download/win))
- **PowerShell** or **Command Prompt**

### Check Antigravity Installation

Make sure Antigravity AI is properly installed:

1. Open **File Explorer**
2. Type in the address bar: `%USERPROFILE%\.gemini\antigravity`
3. If the folder doesn't exist, create it first

---

## 🌍 Global Installation

Global installation makes agents and workflows available in **all your Antigravity AI projects**.

### Step 1: Clone Repository

Open **PowerShell** or **Command Prompt**:

```powershell
# Navigate to Desktop or your preferred folder
cd %USERPROFILE%\Desktop

# Clone repository
git clone https://github.com/ellfarnaz/antigravity-ai-agent-expo-flutter.git

# Enter the folder
cd antigravity-ai-agent-expo-flutter
```

### Step 2: Run Installation Script (PowerShell)

**Option A: Using PowerShell Script (Automatic)**

```powershell
# Run PowerShell script
.\install-global.ps1
```

> **⚠️ Note:** If you get error "cannot be loaded because running scripts is disabled", run this command first:
> ```powershell
> Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
> ```

**Option B: Manual Installation (If script doesn't work)**

```powershell
# Create folders if they don't exist
New-Item -ItemType Directory -Force -Path "$env:USERPROFILE\.gemini\antigravity\global_agents"
New-Item -ItemType Directory -Force -Path "$env:USERPROFILE\.gemini\antigravity\global_workflows"

# Copy agents
Copy-Item -Path ".agent\agents\*.md" -Destination "$env:USERPROFILE\.gemini\antigravity\global_agents\" -Force

# Copy workflows
Copy-Item -Path ".agent\workflows\*.md" -Destination "$env:USERPROFILE\.gemini\antigravity\global_workflows\" -Force

# Copy rules (optional)
Copy-Item -Path "rules.md" -Destination "$env:USERPROFILE\.gemini\GEMINI.md" -Force
```

### Step 3: Verify Installation

1. Open **File Explorer**
2. Navigate to: `%USERPROFILE%\.gemini\antigravity`
3. Make sure the following folders exist and contain `.md` files:
   - `global_agents\` (17 agent files)
   - `global_workflows\` (9 workflow files)

### Folder Structure After Global Installation

```
C:\Users\YourName\.gemini\
├── GEMINI.md                    # Global rules
│
└── antigravity\
    ├── global_agents\
    │   ├── product-planner.md
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
    └── global_workflows\
        ├── plan-product.md
        ├── feature-flutter.md
        ├── feature-reactnative.md
        ├── review-flutter.md
        ├── review-reactnative.md
        ├── stitch-flutter.md
        ├── stitch-reactnative.md
        ├── test-flutter.md
        └── test-reactnative.md
```

---

## 📦 Project Installation

Project installation only installs agents and workflows for **one specific project**. Ideal for team projects.

### Step 1: Navigate to Your Project

```powershell
# Navigate to your Flutter/React Native project folder
cd C:\path\to\your-project
```

### Step 2: Run Project Installation Script

**Option A: Using PowerShell Script**

```powershell
# Run from the cloned repository folder
C:\Users\YourName\Desktop\antigravity-ai-agent-expo-flutter\install-project.ps1
```

**Option B: Manual Installation**

```powershell
# Create .agent folder if it doesn't exist
New-Item -ItemType Directory -Force -Path ".agent\agents"
New-Item -ItemType Directory -Force -Path ".agent\workflows"
New-Item -ItemType Directory -Force -Path ".agent\rules"

# Copy agents
Copy-Item -Path "C:\path\to\antigravity-ai-agent-expo-flutter\.agent\agents\*" -Destination ".agent\agents\" -Force

# Copy workflows
Copy-Item -Path "C:\path\to\antigravity-ai-agent-expo-flutter\.agent\workflows\*" -Destination ".agent\workflows\" -Force

# Copy rules
Copy-Item -Path "C:\path\to\antigravity-ai-agent-expo-flutter\rules.md" -Destination ".agent\rules\rules.md" -Force
```

### Step 3: Commit to Git (Optional)

```powershell
git add .agent\
git commit -m "Add Antigravity AI agents and workflows"
git push
```

### Folder Structure After Project Installation

```
your-project\
├── .agent\
│   ├── rules\
│   │   └── rules.md
│   │
│   ├── agents\
│   │   ├── README.md
│   │   ├── (17 agent files)
│   │
│   └── workflows\
│       ├── README.md
│       ├── (9 workflow files)
│
├── lib\                    # Flutter
├── src\                    # React Native
└── pubspec.yaml / package.json
```

---

## 🔧 Manual Installation (Command Prompt)

If you prefer using **Command Prompt** (CMD):

### Global Installation with CMD

```cmd
:: Create folders
mkdir "%USERPROFILE%\.gemini\antigravity\global_agents"
mkdir "%USERPROFILE%\.gemini\antigravity\global_workflows"

:: Copy agents
xcopy /Y /I ".agent\agents\*.md" "%USERPROFILE%\.gemini\antigravity\global_agents\"

:: Copy workflows
xcopy /Y /I ".agent\workflows\*.md" "%USERPROFILE%\.gemini\antigravity\global_workflows\"

:: Copy rules
copy /Y "rules.md" "%USERPROFILE%\.gemini\GEMINI.md"
```

### Project Installation with CMD

```cmd
:: Create folders
mkdir ".agent\agents"
mkdir ".agent\workflows"
mkdir ".agent\rules"

:: Copy agents
xcopy /Y /I "C:\path\to\repo\.agent\agents\*" ".agent\agents\"

:: Copy workflows
xcopy /Y /I "C:\path\to\repo\.agent\workflows\*" ".agent\workflows\"

:: Copy rules
copy /Y "C:\path\to\repo\rules.md" ".agent\rules\rules.md"
```

---

## ✅ Verification

### Verify Global Installation

1. Open **Antigravity AI**
2. Open **any project**
3. Type `/` in the chat
4. You should see the following workflows:
   - `/plan-product`
   - `/feature-flutter`
   - `/feature-reactnative`
   - `/review-flutter`
   - `/review-reactnative`
   - `/test-flutter`
   - `/test-reactnative`
   - `/stitch-flutter`
   - `/stitch-reactnative`

### Verify Project Installation

1. Open **Antigravity AI**
2. Open **the installed project**
3. Type `/` in the chat
4. Workflows should appear
5. Check that `.agent\` folder exists in your project

### Test Installation

Try running a simple workflow:

```
/feature-flutter Create a simple counter widget
```

If the workflow runs and shows planning from Grand Architect, installation is **successful**! 🎉

---

## 🔍 Troubleshooting

### "Workflow not found"

**Problem:** Typing `/feature-flutter` doesn't show the workflow.

**Solutions:**

1. **Check installation location:**
   ```powershell
   # Global
   dir "$env:USERPROFILE\.gemini\antigravity\global_workflows"
   
   # Project
   dir .agent\workflows
   ```

2. **Restart Antigravity AI**

3. **Make sure files have `.md` extension**

4. **Check file contents** - ensure YAML frontmatter format is correct

### "Permission denied" in PowerShell

**Problem:** PowerShell script cannot be executed.

**Solution:**

```powershell
# Allow script execution for current user
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

# Try running again
.\install-global.ps1
```

### Antigravity folder not found

**Problem:** Folder `%USERPROFILE%\.gemini\antigravity` doesn't exist.

**Solution:**

```powershell
# Create folder manually
New-Item -ItemType Directory -Force -Path "$env:USERPROFILE\.gemini\antigravity\global_agents"
New-Item -ItemType Directory -Force -Path "$env:USERPROFILE\.gemini\antigravity\global_workflows"

# Run manual installation
```

### Path too long (Windows limitation)

**Problem:** Error "The specified path is too long" on Windows.

**Solutions:**

1. **Move repository to a shorter folder:**
   ```powershell
   # Example: move to C:\dev
   cd C:\
   mkdir dev
   cd dev
   git clone https://github.com/ellfarnaz/antigravity-ai-agent-expo-flutter.git ag-agents
   cd ag-agents
   ```

2. **Or enable long path support in Windows 10/11:**
   - Open **Registry Editor** (Win + R → `regedit`)
   - Navigate to: `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\FileSystem`
   - Set `LongPathsEnabled` to `1`
   - Restart computer

### Git not installed

**Problem:** Command `git` not found.

**Solution:**

1. Download **Git for Windows**: https://git-scm.com/download/win
2. Install with default options
3. Restart PowerShell/CMD
4. Try again

---

## 🔄 Updating Installation

### Update Global Installation

```powershell
# Navigate to repository folder
cd C:\path\to\antigravity-ai-agent-expo-flutter

# Pull latest updates
git pull

# Run installation again
.\install-global.ps1
```

### Update Project Installation

```powershell
# Update repository
cd C:\path\to\antigravity-ai-agent-expo-flutter
git pull

# Navigate to your project
cd C:\path\to\your-project

# Run installation again
C:\path\to\antigravity-ai-agent-expo-flutter\install-project.ps1
```

---

## 📝 PowerShell Script (Reference)

If you want to create your own script, here's an example PowerShell script:

### `install-global.ps1`

```powershell
# Antigravity AI Agents - Global Installation Script for Windows
# Version: 2.4

Write-Host "🤖 Antigravity AI Agents - Global Installation" -ForegroundColor Cyan
Write-Host "================================================" -ForegroundColor Cyan

# Check if Antigravity directory exists
$antigravityDir = "$env:USERPROFILE\.gemini\antigravity"
if (-not (Test-Path $antigravityDir)) {
    Write-Host "⚠️  Antigravity directory not found. Creating..." -ForegroundColor Yellow
    New-Item -ItemType Directory -Force -Path "$antigravityDir\global_agents" | Out-Null
    New-Item -ItemType Directory -Force -Path "$antigravityDir\global_workflows" | Out-Null
}

# Create directories if they don't exist
$agentsDir = "$antigravityDir\global_agents"
$workflowsDir = "$antigravityDir\global_workflows"

New-Item -ItemType Directory -Force -Path $agentsDir | Out-Null
New-Item -ItemType Directory -Force -Path $workflowsDir | Out-Null

# Count files
$agentFiles = Get-ChildItem -Path ".agent\agents\*.md" -File
$workflowFiles = Get-ChildItem -Path ".agent\workflows\*.md" -File

Write-Host ""
Write-Host "📦 Files to install:" -ForegroundColor Green
Write-Host "   - Agents: $($agentFiles.Count) files" -ForegroundColor White
Write-Host "   - Workflows: $($workflowFiles.Count) files" -ForegroundColor White
Write-Host ""

# Ask for confirmation
$confirmation = Read-Host "Continue with installation? (Y/N)"
if ($confirmation -ne 'Y' -and $confirmation -ne 'y') {
    Write-Host "❌ Installation cancelled." -ForegroundColor Red
    exit
}

# Copy agents
Write-Host ""
Write-Host "📋 Installing agents..." -ForegroundColor Cyan
Copy-Item -Path ".agent\agents\*.md" -Destination $agentsDir -Force
Write-Host "✅ Agents installed to: $agentsDir" -ForegroundColor Green

# Copy workflows
Write-Host ""
Write-Host "🔄 Installing workflows..." -ForegroundColor Cyan
Copy-Item -Path ".agent\workflows\*.md" -Destination $workflowsDir -Force
Write-Host "✅ Workflows installed to: $workflowsDir" -ForegroundColor Green

# Copy rules (optional)
Write-Host ""
Write-Host "📜 Installing global rules..." -ForegroundColor Cyan
Copy-Item -Path "rules.md" -Destination "$env:USERPROFILE\.gemini\GEMINI.md" -Force
Write-Host "✅ Rules installed to: $env:USERPROFILE\.gemini\GEMINI.md" -ForegroundColor Green

Write-Host ""
Write-Host "================================================" -ForegroundColor Cyan
Write-Host "🎉 Installation complete!" -ForegroundColor Green
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Yellow
Write-Host "1. Open any project in Antigravity AI" -ForegroundColor White
Write-Host "2. Type '/' to see available workflows" -ForegroundColor White
Write-Host "3. Try: /feature-flutter Create a counter widget" -ForegroundColor White
Write-Host ""
```

---

## 🆘 Need Help?

- 📖 [Main README](README.md)
- 📖 [General Installation Guide](INSTALLATION.md)
- 🤖 [Agents Documentation](.agent/agents/README.md)
- 🔄 [Workflows Documentation](.agent/workflows/README.md)
- 🐛 [Report Issues](https://github.com/ellfarnaz/antigravity-ai-agent-expo-flutter/issues)

---

## 🌟 Windows Tips

1. **Use PowerShell** (more modern than CMD)
2. **Run as Administrator** if you encounter permission issues
3. **Use Windows Terminal** for a better experience
4. **Enable WSL2** if you're familiar with Linux commands

---

**Happy using Antigravity AI Agents! 🚀**

*© 2025 SenaiVerse | Antigravity AI Agent System v2.4*
