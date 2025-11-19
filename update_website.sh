#!/bin/bash

# Jupyter Book Website Update Script
# ==================================
# This script rebuilds and deploys the Jupyter Book website

set -e  # Exit on error

echo "🔄 Starting website update..."
echo ""

# 1. Pull latest changes from remote (if needed)
echo "📥 Checking for updates..."
git pull origin main 2>/dev/null || echo "⚠️  Note: Pull from main failed, continuing anyway..."
echo ""

# 2. Clean previous build
echo "🧹 Cleaning previous build..."
cd mynotes
jupyter-book clean .
echo "✓ Clean complete"
echo ""

# 3. Rebuild the book
echo "📚 Building Jupyter Book..."
jupyter-book build . --all
BUILD_STATUS=$?

if [ $BUILD_STATUS -ne 0 ]; then
    echo "❌ Build failed! Please check errors above."
    exit 1
fi
echo "✓ Build successful"
echo ""

# 4. Return to repository root
cd ..

# 5. Deploy to GitHub Pages
echo "🚀 Deploying to GitHub Pages..."
echo ""
echo "⚠️  MANUAL DEPLOYMENT REQUIRED:"
echo ""
echo "Due to branch restrictions, please run the following command manually:"
echo ""
echo "    ghp-import -n -p -f mynotes/_build/html"
echo ""
echo "Or merge this branch to main and deploy from main:"
echo ""
echo "    git checkout main"
echo "    git merge claude/latex-to-jupyter-markdown-01MnqhbcsPSk59HBJeKpMLXE"
echo "    git push origin main"
echo "    ghp-import -n -p -f mynotes/_build/html"
echo ""

# 6. Get website URL
REPO=$(git remote get-url origin | sed 's/.*github.com[:/]\(.*\)\.git/\1/' | sed 's|http.*git/||')
URL="https://duymlcoding.github.io/Pe/"

echo "✅ Build complete!"
echo ""
echo "🌐 Your site will be at: $URL"
echo ""
echo "⏱️  After deployment, allow 1-2 minutes for changes to appear on GitHub Pages"
echo ""
