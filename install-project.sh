#!/bin/bash

# 📦 Antigravity AI Agents - Project Installation Script
# This script installs agents and workflows for the current project only

set -e  # Exit on error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Check if we're in a project directory
if [ ! -f "package.json" ] && [ ! -f "pubspec.yaml" ] && [ ! -f "app.json" ]; then
    echo -e "${YELLOW}⚠️  Warning: No package.json, pubspec.yaml, or app.json found.${NC}"
    echo -e "${YELLOW}   Are you in a Flutter or React Native project directory?${NC}"
    read -p "$(echo -e ${YELLOW}Continue anyway? [y/N]:${NC}) " -n 1 -r
    echo ""
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo -e "${RED}❌ Installation cancelled.${NC}"
        exit 0
    fi
fi

# Current script directory (where the agents are)
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SOURCE_AGENTS_DIR="$SCRIPT_DIR/.agent/agents"
SOURCE_WORKFLOWS_DIR="$SCRIPT_DIR/.agent/workflows"
SOURCE_RULES_FILE="$SCRIPT_DIR/.agent/rules/rules.md"

# Target directory (current working directory)
TARGET_DIR="$(pwd)"
TARGET_AGENT_DIR="$TARGET_DIR/.agent"

echo -e "${BLUE}╔════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║  🤖 Antigravity AI Agents - Project Installation         ║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════════════════════════╝${NC}"
echo ""

echo -e "${YELLOW}📍 Installation location:${NC}"
echo -e "   $TARGET_AGENT_DIR"
echo ""

# Count files
AGENT_COUNT=$(find "$SOURCE_AGENTS_DIR" -name "*.md" ! -name "README.md" | wc -l | tr -d ' ')
WORKFLOW_COUNT=$(find "$SOURCE_WORKFLOWS_DIR" -name "*.md" ! -name "README.md" | wc -l | tr -d ' ')

echo -e "${BLUE}📦 Found:${NC}"
echo -e "   ${GREEN}$AGENT_COUNT${NC} agents"
echo -e "   ${GREEN}$WORKFLOW_COUNT${NC} workflows"
if [ -f "$SOURCE_RULES_FILE" ]; then
    echo -e "   ${GREEN}1${NC} rules file"
fi
echo ""

# Check if .agent directory exists
if [ -d "$TARGET_AGENT_DIR" ]; then
    echo -e "${YELLOW}⚠️  .agent directory already exists.${NC}"
    read -p "$(echo -e ${YELLOW}Merge and overwrite existing files? [y/N]:${NC}) " -n 1 -r
    echo ""
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo -e "${RED}❌ Installation cancelled.${NC}"
        exit 0
    fi
else
    read -p "$(echo -e ${YELLOW}Install to current project? [y/N]:${NC}) " -n 1 -r
    echo ""
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo -e "${RED}❌ Installation cancelled.${NC}"
        exit 0
    fi
fi

echo ""
echo -e "${BLUE}🚀 Installing...${NC}"
echo ""

# Create directories
mkdir -p "$TARGET_AGENT_DIR/agents"
mkdir -p "$TARGET_AGENT_DIR/workflows"

# Install agents
echo -e "${YELLOW}Installing agents...${NC}"
AGENTS_INSTALLED=0
for agent in "$SOURCE_AGENTS_DIR"/*.md; do
    filename=$(basename "$agent")
    cp "$agent" "$TARGET_AGENT_DIR/agents/"
    echo -e "  ${GREEN}✓${NC} $filename"
    ((AGENTS_INSTALLED++))
done

echo ""

# Install workflows
echo -e "${YELLOW}Installing workflows...${NC}"
WORKFLOWS_INSTALLED=0
for workflow in "$SOURCE_WORKFLOWS_DIR"/*.md; do
    filename=$(basename "$workflow")
    cp "$workflow" "$TARGET_AGENT_DIR/workflows/"
    echo -e "  ${GREEN}✓${NC} $filename"
    ((WORKFLOWS_INSTALLED++))
done

echo ""

# Install rules
if [ -f "$SOURCE_RULES_FILE" ]; then
    echo -e "${YELLOW}Installing rules...${NC}"
    mkdir -p "$TARGET_AGENT_DIR/rules"
    cp "$SOURCE_RULES_FILE" "$TARGET_AGENT_DIR/rules/rules.md"
    echo -e "  ${GREEN}✓${NC} rules/rules.md"
fi

echo ""
echo -e "${GREEN}╔════════════════════════════════════════════════════════════╗${NC}"
echo -e "${GREEN}║  ✅ Installation Complete!                                 ║${NC}"
echo -e "${GREEN}╚════════════════════════════════════════════════════════════╝${NC}"
echo ""
echo -e "${BLUE}📊 Summary:${NC}"
echo -e "   ${GREEN}$AGENTS_INSTALLED${NC} agents installed"
echo -e "   ${GREEN}$WORKFLOWS_INSTALLED${NC} workflows installed"
if [ -f "$SOURCE_RULES_FILE" ]; then
    echo -e "   ${GREEN}1${NC} rules file installed"
fi
echo ""
echo -e "${YELLOW}🎯 Next steps:${NC}"
echo -e "   1. Open this project in Antigravity AI"
echo -e "   2. Use workflows with slash commands:"
echo -e "      ${BLUE}/feature-flutter${NC} Add user authentication"
echo -e "      ${BLUE}/review-reactnative${NC}"
echo -e "      ${BLUE}/test-flutter${NC}"
echo ""
echo -e "${GREEN}Happy coding! 🚀${NC}"
