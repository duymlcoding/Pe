# GitHub Pages Deployment Instructions

## Current Status
✅ Jupyter Book successfully built
✅ All content ready
⚠️ GitHub Pages deployment requires manual setup

## Option 1: Automatic Deployment with GitHub Actions (Recommended)

### Step 1: Create Workflow File

1. Go to your GitHub repository: https://github.com/duymlcoding/Pe
2. Click **"Add file"** → **"Create new file"**
3. Name the file: `.github/workflows/deploy-book.yml`
4. Paste this content:

```yaml
name: Deploy Jupyter Book to GitHub Pages

on:
  push:
    branches:
      - main
  workflow_dispatch:

permissions:
  contents: read
  pages: write
  id-token: write

concurrency:
  group: "pages"
  cancel-in-progress: true

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout repository
        uses: actions/checkout@v4

      - name: Setup Python
        uses: actions/setup-python@v5
        with:
          python-version: '3.11'
          cache: 'pip'

      - name: Install dependencies
        run: |
          pip install --upgrade pip
          pip install jupyter-book>=1.0.0
          pip install sphinx-proof sphinx-togglebutton sphinx-copybutton

      - name: Build Jupyter Book
        run: |
          cd mynotes
          jupyter-book build . --all

      - name: Upload artifact
        uses: actions/upload-pages-artifact@v3
        with:
          path: 'mynotes/_build/html'

  deploy:
    needs: build
    runs-on: ubuntu-latest
    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}
    steps:
      - name: Deploy to GitHub Pages
        id: deployment
        uses: actions/deploy-pages@v4
```

5. Click **"Commit changes"**
6. Add commit message: "Add GitHub Actions workflow for Jupyter Book deployment"
7. Click **"Commit changes"**

### Step 2: Configure GitHub Pages Settings

1. Go to **Settings** → **Pages** (left sidebar)
2. Under **"Source"**, select:
   - Source: **GitHub Actions**
3. Click **"Save"** (if needed)

### Step 3: Trigger Deployment

The workflow will automatically run when you:
- Push to main branch
- Or manually trigger it:
  1. Go to **Actions** tab
  2. Click **"Deploy Jupyter Book to GitHub Pages"**
  3. Click **"Run workflow"** → **"Run workflow"**

### Step 4: Wait for Deployment

1. Go to **Actions** tab
2. Watch the workflow run (takes ~2-3 minutes)
3. Once complete (green checkmark), visit: **https://duymlcoding.github.io/Pe/**

---

## Option 2: Manual Deployment (Alternative)

If you prefer manual control or GitHub Actions doesn't work:

### From Your Local Machine

1. **Clone the repository:**
   ```bash
   git clone https://github.com/duymlcoding/Pe.git
   cd Pe
   ```

2. **Install dependencies:**
   ```bash
   pip install jupyter-book>=1.0.0
   pip install sphinx-proof sphinx-togglebutton sphinx-copybutton
   pip install ghp-import
   ```

3. **Build and deploy:**
   ```bash
   cd mynotes
   jupyter-book build . --all
   cd ..
   ghp-import -n -p -f mynotes/_build/html
   ```

4. **Configure GitHub Pages:**
   - Go to Settings → Pages
   - Source: **Deploy from a branch**
   - Branch: **gh-pages**
   - Folder: **/ (root)**
   - Save

5. **Visit:** https://duymlcoding.github.io/Pe/

---

## Option 3: Quick Deploy (Pre-built)

The Jupyter Book is already built in `mynotes/_build/html/`. You can:

1. **Download the built site:**
   - Download the `mynotes/_build/html/` folder contents

2. **Upload to gh-pages branch manually:**
   - Go to your repository on GitHub
   - Switch to `gh-pages` branch (create if doesn't exist)
   - Upload all files from `_build/html/`
   - Commit changes

3. **Configure GitHub Pages:**
   - Settings → Pages
   - Source: Deploy from branch `gh-pages`
   - Save

---

## Verification

Once deployed, your website should be live at:

**🌐 https://duymlcoding.github.io/Pe/**

### Check Deployment Status

1. Go to repository **Environments** (right sidebar on main page)
2. Click **github-pages**
3. See deployment history and status
4. Click **"View deployment"** to visit the site

### Test Website Features

- ✅ Homepage loads
- ✅ All 7 chapters accessible via sidebar
- ✅ Search box works (top right)
- ✅ Math equations render properly
- ✅ Admonition boxes styled correctly
- ✅ Mobile responsive (resize browser)

---

## Troubleshooting

### Workflow Fails

**Error: "Process completed with exit code 1"**
- Check the workflow log in Actions tab
- Usually a missing dependency or build error

**Fix:**
- Ensure all files in `mynotes/` are committed
- Check `mynotes/_config.yml` and `mynotes/_toc.yml` are valid

### Page Not Found (404)

**After deployment, getting 404 error**

**Fix:**
1. Ensure GitHub Pages source is configured correctly
2. Wait 2-3 minutes after deployment
3. Try accessing: `https://duymlcoding.github.io/Pe/index.html`
4. Clear browser cache

### Math Not Rendering

**Equations show as raw LaTeX**

**Fix:**
- Check `mynotes/_config.yml` has MathJax configuration
- Rebuild with: `jupyter-book clean . && jupyter-book build . --all`
- Redeploy

---

## Need Help?

If you encounter issues:

1. Check GitHub Actions logs (Actions tab → latest workflow run)
2. Open an issue: https://github.com/duymlcoding/Pe/issues
3. Check Jupyter Book docs: https://jupyterbook.org

---

## Summary

**Recommended**: Use **Option 1** (GitHub Actions) for automatic deployment on every push to main.

**Quick Start**:
1. Create `.github/workflows/deploy-book.yml` with the content above
2. Configure Settings → Pages → Source: GitHub Actions
3. Push to main or manually trigger workflow
4. Visit https://duymlcoding.github.io/Pe/

Your Jupyter Book website is ready to deploy! 🚀
