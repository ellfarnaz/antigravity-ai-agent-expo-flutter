#!/bin/bash

# 🌍 Antigravity AI Agents - Global Installation Script
# This script installs agents and workflows globally for all your Antigravity projects

set -e  # Exit on error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Global Antigravity directory
GLOBAL_DIR="$HOME/.gemini/antigravity"
GLOBAL_AGENTS_DIR="$GLOBAL_DIR/global_agents"
GLOBAL_WORKFLOWS_DIR="$GLOBAL_DIR/global_workflows"

# Current script directory
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PROJECT_AGENTS_DIR="$SCRIPT_DIR/.agent/agents"
PROJECT_WORKFLOWS_DIR="$SCRIPT_DIR/.agent/workflows"
PROJECT_RULES_FILE="$SCRIPT_DIR/.agent/rules/rules.md"

echo -e "${BLUE}╔════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║  🤖 Antigravity AI Agents - Global Installation          ║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════════════════════════╝${NC}"
echo ""

# Check if global directory exists
if [ ! -d "$GLOBAL_DIR" ]; then
    echo -e "${RED}❌ Error: Antigravity global directory not found at $GLOBAL_DIR${NC}"
    echo -e "${YELLOW}   Please make sure Antigravity AI is installed.${NC}"
    exit 1
fi

# Check if directories exist
AGENTS_DIR_EXISTS=false
WORKFLOWS_DIR_EXISTS=false

if [ -d "$GLOBAL_AGENTS_DIR" ] && [ "$(ls -A $GLOBAL_AGENTS_DIR 2>/dev/null)" ]; then
    AGENTS_DIR_EXISTS=true
fi

if [ -d "$GLOBAL_WORKFLOWS_DIR" ] && [ "$(ls -A $GLOBAL_WORKFLOWS_DIR 2>/dev/null)" ]; then
    WORKFLOWS_DIR_EXISTS=true
fi

# Create global directories if they don't exist
echo -e "${BLUE}🔍 Checking installation environment...${NC}"
echo ""

if [ "$AGENTS_DIR_EXISTS" = false ]; then
    echo -e "${YELLOW}📁 Creating global_agents directory (first-time setup)${NC}"
    mkdir -p "$GLOBAL_AGENTS_DIR"
else
    echo -e "${GREEN}✓${NC} global_agents directory exists"
fi

if [ "$WORKFLOWS_DIR_EXISTS" = false ]; then
    echo -e "${YELLOW}📁 Creating global_workflows directory (first-time setup)${NC}"
    mkdir -p "$GLOBAL_WORKFLOWS_DIR"
else
    echo -e "${GREEN}✓${NC} global_workflows directory exists"
fi

echo ""
echo -e "${YELLOW}📍 Installation locations:${NC}"
echo -e "   Agents:    $GLOBAL_AGENTS_DIR"
echo -e "   Workflows: $GLOBAL_WORKFLOWS_DIR"
echo ""

# Count files
AGENT_COUNT=$(find "$PROJECT_AGENTS_DIR" -name "*.md" ! -name "README.md" | wc -l | tr -d ' ')
WORKFLOW_COUNT=$(find "$PROJECT_WORKFLOWS_DIR" -name "*.md" ! -name "README.md" | wc -l | tr -d ' ')

echo -e "${BLUE}📦 Found:${NC}"
echo -e "   ${GREEN}$AGENT_COUNT${NC} agents"
echo -e "   ${GREEN}$WORKFLOW_COUNT${NC} workflows"
if [ -f "$PROJECT_RULES_FILE" ]; then
    echo -e "   ${GREEN}1${NC} rules file"
fi
echo ""

# Ask for confirmation
read -p "$(echo -e ${YELLOW}Install globally? This will overwrite existing files. [y/N]:${NC}) " -n 1 -r
echo ""

if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo -e "${RED}❌ Installation cancelled.${NC}"
    exit 0
fi

echo ""
echo -e "${BLUE}🚀 Installing...${NC}"
echo ""

# Install agents
echo -e "${YELLOW}Installing agents...${NC}"
AGENTS_INSTALLED=0
for agent in "$PROJECT_AGENTS_DIR"/*.md; do
    filename=$(basename "$agent")
    if [ "$filename" != "README.md" ]; then
        cp "$agent" "$GLOBAL_AGENTS_DIR/"
        echo -e "  ${GREEN}✓${NC} $filename"
        ((AGENTS_INSTALLED++))
    fi
done

echo ""

# Install workflows
echo -e "${YELLOW}Installing workflows...${NC}"
WORKFLOWS_INSTALLED=0
for workflow in "$PROJECT_WORKFLOWS_DIR"/*.md; do
    filename=$(basename "$workflow")
    if [ "$filename" != "README.md" ]; then
        cp "$workflow" "$GLOBAL_WORKFLOWS_DIR/"
        echo -e "  ${GREEN}✓${NC} $filename"
        ((WORKFLOWS_INSTALLED++))
    fi
done

echo ""

# Install rules to GEMINI.md (global rules file)
if [ -f "$PROJECT_RULES_FILE" ]; then
    echo -e "${YELLOW}Installing global rules...${NC}"
    cp "$PROJECT_RULES_FILE" "$HOME/.gemini/GEMINI.md"
    echo -e "  ${GREEN}✓${NC} GEMINI.md (global rules)"
fi

echo ""
echo -e "${GREEN}╔════════════════════════════════════════════════════════════╗${NC}"
echo -e "${GREEN}║  ✅ Installation Complete!                                 ║${NC}"
echo -e "${GREEN}╚════════════════════════════════════════════════════════════╝${NC}"
echo ""
echo -e "${BLUE}📊 Summary:${NC}"
echo -e "   ${GREEN}$AGENTS_INSTALLED${NC} agents installed"
echo -e "   ${GREEN}$WORKFLOWS_INSTALLED${NC} workflows installed"
if [ -f "$PROJECT_RULES_FILE" ]; then
    echo -e "   ${GREEN}1${NC} rules file installed"
fi
echo ""
echo -e "${YELLOW}🎯 Next steps:${NC}"
echo -e "   1. Open any project in Antigravity AI"
echo -e "   2. Use workflows with slash commands:"
echo -e "      ${BLUE}/feature-flutter${NC} Add user authentication"
echo -e "      ${BLUE}/review-reactnative${NC}"
echo -e "      ${BLUE}/test-flutter${NC}"
echo ""
echo -e "${GREEN}Happy coding! 🚀${NC}"
