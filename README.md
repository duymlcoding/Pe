# Chemical Engineering PE Exam Study Guide

Comprehensive study materials for the Chemical Engineering PE exam, covering all seven major topics.

## 🌐 Live Website

**Visit:** https://duymlcoding.github.io/Pe/

Interactive Jupyter Book with:
- Searchable content
- LaTeX math rendering
- Mobile-friendly design
- 100+ worked examples

## Topics Covered

1. **Mass and Energy Balance** - Material/energy balances, recycle streams, combustion
2. **Thermodynamics** - Gas laws, cycles, entropy, phase diagrams
3. **Fluid Mechanics** - Flow, pressure drop, pumps, Reynolds numbers
4. **Heat Transfer** - Conduction, convection, radiation, heat exchangers
5. **Mass Transfer** - Diffusion, absorption, distillation, extraction
6. **Chemical Reaction Engineering** - Kinetics, reactors (batch, CSTR, PFR)
7. **Chemical and Phase Equilibria** - VLE, LLE, fugacity, Gibbs energy

## Content Statistics

- **14,000+** lines of study material
- **1,000+** equations
- **100+** worked example problems
- **7** comprehensive chapters

## Repository Structure

```
Pe/
├── mynotes/              # Jupyter Book source
│   ├── chapters/         # All 7 topic chapters
│   ├── _config.yml       # Book configuration
│   ├── _toc.yml          # Table of contents
│   └── index.md          # Homepage
├── source/latex/         # Original LaTeX files (21 files)
└── .github/workflows/    # Auto-deployment to GitHub Pages
```

## Local Development

```bash
# Clone repository
git clone https://github.com/duymlcoding/Pe.git
cd Pe

# Install dependencies
pip install -r mynotes/requirements.txt

# Build book
cd mynotes
jupyter-book build . --all

# Preview (open in browser: http://localhost:8000)
cd _build/html
python3 -m http.server 8000
```

## Deployment

The website automatically deploys to GitHub Pages when changes are pushed to the `main` branch.

## License

See [LICENSE](LICENSE) file for details.

## Acknowledgments

Content aligned with NCEES Chemical Engineering PE exam specifications. All materials organized for effective exam preparation.

---

**Last Updated:** November 2025
