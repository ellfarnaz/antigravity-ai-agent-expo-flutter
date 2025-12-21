# Antigravity AI Agents - Project Installation Script for Windows
# Version: 2.4
# Description: Installs agents and workflows for a specific project

Write-Host ""
Write-Host "🤖 Antigravity AI Agents - Project Installation" -ForegroundColor Cyan
Write-Host "================================================" -ForegroundColor Cyan
Write-Host ""

# Get the script directory (where the repo is)
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path

# Check if running from repo directory
if (-not (Test-Path "$scriptDir\.agent\agents") -or -not (Test-Path "$scriptDir\.agent\workflows")) {
    Write-Host "❌ Error: Cannot find .agent directory in script location" -ForegroundColor Red
    Write-Host "   Script location: $scriptDir" -ForegroundColor Yellow
    Write-Host "   Please run this script from the antigravity-ai-agent-expo-flutter directory" -ForegroundColor Yellow
    Write-Host ""
    exit 1
}

# Check if current directory is a valid project
$currentDir = Get-Location
$isFlutterProject = Test-Path "pubspec.yaml"
$isReactNativeProject = Test-Path "package.json"

Write-Host "📍 Current directory: $currentDir" -ForegroundColor Cyan
Write-Host ""

if (-not $isFlutterProject -and -not $isReactNativeProject) {
    Write-Host "⚠️  Warning: This doesn't appear to be a Flutter or React Native project" -ForegroundColor Yellow
    Write-Host "   (No pubspec.yaml or package.json found)" -ForegroundColor Yellow
    Write-Host ""
    $continueAnyway = Read-Host "Continue anyway? (Y/N)"
    if ($continueAnyway -ne 'Y' -and $continueAnyway -ne 'y') {
        Write-Host ""
        Write-Host "❌ Installation cancelled." -ForegroundColor Red
        Write-Host ""
        exit 0
    }
} else {
    if ($isFlutterProject) {
        Write-Host "✓ Flutter project detected (pubspec.yaml)" -ForegroundColor Green
    }
    if ($isReactNativeProject) {
        Write-Host "✓ React Native project detected (package.json)" -ForegroundColor Green
    }
}
Write-Host ""

# Check if .agent directory already exists
if (Test-Path ".agent") {
    Write-Host "⚠️  Warning: .agent directory already exists!" -ForegroundColor Yellow
    Write-Host "   Existing files will be overwritten." -ForegroundColor Yellow
    Write-Host ""
    $overwrite = Read-Host "Continue and overwrite? (Y/N)"
    if ($overwrite -ne 'Y' -and $overwrite -ne 'y') {
        Write-Host ""
        Write-Host "❌ Installation cancelled." -ForegroundColor Red
        Write-Host ""
        exit 0
    }
}

# Create directories
$agentsDir = ".agent\agents"
$workflowsDir = ".agent\workflows"
$rulesDir = ".agent\rules"

Write-Host "📁 Creating directories..." -ForegroundColor Cyan
New-Item -ItemType Directory -Force -Path $agentsDir | Out-Null
New-Item -ItemType Directory -Force -Path $workflowsDir | Out-Null
New-Item -ItemType Directory -Force -Path $rulesDir | Out-Null
Write-Host "   ✓ .agent\agents" -ForegroundColor Green
Write-Host "   ✓ .agent\workflows" -ForegroundColor Green
Write-Host "   ✓ .agent\rules" -ForegroundColor Green
Write-Host ""

# Count files
$agentFiles = Get-ChildItem -Path "$scriptDir\.agent\agents\*.md" -File
$workflowFiles = Get-ChildItem -Path "$scriptDir\.agent\workflows\*.md" -File

Write-Host "📦 Files to install:" -ForegroundColor Cyan
Write-Host "   - Agents: $($agentFiles.Count) files" -ForegroundColor White
Write-Host "   - Workflows: $($workflowFiles.Count) files" -ForegroundColor White
Write-Host "   - Rules: 1 file" -ForegroundColor White
Write-Host ""

# Ask for confirmation
$confirmation = Read-Host "Continue with installation? (Y/N)"
if ($confirmation -ne 'Y' -and $confirmation -ne 'y') {
    Write-Host ""
    Write-Host "❌ Installation cancelled." -ForegroundColor Red
    Write-Host ""
    exit 0
}

Write-Host ""
Write-Host "🚀 Starting installation..." -ForegroundColor Cyan
Write-Host ""

# Copy agents
Write-Host "📋 Installing agents..." -ForegroundColor Cyan
$copiedAgents = 0
foreach ($file in $agentFiles) {
    Copy-Item -Path $file.FullName -Destination $agentsDir -Force
    Write-Host "   ✓ $($file.Name)" -ForegroundColor Green
    $copiedAgents++
}
Write-Host "   Installed $copiedAgents agents" -ForegroundColor Green
Write-Host ""

# Copy workflows
Write-Host "🔄 Installing workflows..." -ForegroundColor Cyan
$copiedWorkflows = 0
foreach ($file in $workflowFiles) {
    Copy-Item -Path $file.FullName -Destination $workflowsDir -Force
    Write-Host "   ✓ $($file.Name)" -ForegroundColor Green
    $copiedWorkflows++
}
Write-Host "   Installed $copiedWorkflows workflows" -ForegroundColor Green
Write-Host ""

# Copy rules
if (Test-Path "$scriptDir\rules.md") {
    Write-Host "📜 Installing project rules..." -ForegroundColor Cyan
    Copy-Item -Path "$scriptDir\rules.md" -Destination "$rulesDir\rules.md" -Force
    Write-Host "   ✓ rules.md" -ForegroundColor Green
    Write-Host ""
}

# Copy README files if they exist
if (Test-Path "$scriptDir\.agent\agents\README.md") {
    Copy-Item -Path "$scriptDir\.agent\agents\README.md" -Destination "$agentsDir\README.md" -Force
}
if (Test-Path "$scriptDir\.agent\workflows\README.md") {
    Copy-Item -Path "$scriptDir\.agent\workflows\README.md" -Destination "$workflowsDir\README.md" -Force
}

# Summary
Write-Host "================================================" -ForegroundColor Cyan
Write-Host "🎉 Installation complete!" -ForegroundColor Green
Write-Host ""
Write-Host "📊 Summary:" -ForegroundColor Cyan
Write-Host "   ✓ $copiedAgents agents installed" -ForegroundColor White
Write-Host "   ✓ $copiedWorkflows workflows installed" -ForegroundColor White
Write-Host "   ✓ Project rules installed" -ForegroundColor White
Write-Host ""
Write-Host "📍 Installation location:" -ForegroundColor Cyan
Write-Host "   $currentDir\.agent" -ForegroundColor White
Write-Host ""
Write-Host "🚀 Next steps:" -ForegroundColor Yellow
Write-Host "   1. Open this project in Antigravity AI" -ForegroundColor White
Write-Host "   2. Type '/' to see available workflows" -ForegroundColor White
Write-Host "   3. (Optional) Commit to version control:" -ForegroundColor White
Write-Host "      git add .agent\" -ForegroundColor Gray
Write-Host "      git commit -m 'Add Antigravity AI agents'" -ForegroundColor Gray
Write-Host "      git push" -ForegroundColor Gray
Write-Host ""
Write-Host "📚 Available workflows:" -ForegroundColor Cyan
Write-Host "   • /plan-product          - Product discovery & PRD" -ForegroundColor White
Write-Host "   • /feature-flutter       - Full Flutter feature implementation" -ForegroundColor White
Write-Host "   • /feature-reactnative   - Full React Native feature implementation" -ForegroundColor White
Write-Host "   • /review-flutter        - Comprehensive Flutter code review" -ForegroundColor White
Write-Host "   • /review-reactnative    - Comprehensive React Native review" -ForegroundColor White
Write-Host "   • /test-flutter          - Generate Flutter test suite" -ForegroundColor White
Write-Host "   • /test-reactnative      - Generate React Native test suite" -ForegroundColor White
Write-Host "   • /stitch-flutter        - Convert Stitch HTML to Flutter" -ForegroundColor White
Write-Host "   • /stitch-reactnative    - Convert Stitch HTML to React Native" -ForegroundColor White
Write-Host ""
Write-Host "================================================" -ForegroundColor Cyan
Write-Host ""
