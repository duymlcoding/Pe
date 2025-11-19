# Chemical Engineering PE Exam Study Guide

Professional Engineering (PE) exam study materials for Chemical Engineering, converted to Jupyter Book format for web-based learning.

## Overview

This repository contains comprehensive study guides for the Chemical Engineering PE exam, covering all major topics required for the exam. The materials have been converted from LaTeX to Jupyter Book-compatible Markdown format for easy web deployment and interactive learning.

## Project Structure

```
Pe/
├── content/                                    # Jupyter Book content
│   ├── mass-and-energy-balance/               # Mass and Energy Balance materials
│   │   └── massandenergybalance.md
│   ├── thermodynamics/                         # Thermodynamics materials
│   ├── fluid-mechanics/                        # Fluid Mechanics materials
│   ├── heat-transfer/                          # Heat Transfer materials
│   ├── mass-transfer/                          # Mass Transfer materials
│   ├── chemical-reaction-engineering/          # Chemical Reaction Engineering materials
│   └── chemical-and-phase-equilibria/          # Chemical and Phase Equilibria materials
├── source/                                     # Source files
│   └── latex/                                  # Original LaTeX files
├── docs/                                       # Documentation
│   ├── conversion_notes.txt                    # Conversion process documentation
│   ├── latex_macros.txt                        # LaTeX macros reference
│   └── images_list.txt                         # Image inventory
├── README.md                                   # This file
└── LICENSE                                     # License information
```

## Topics Covered

### ✅ Mass and Energy Balance (Completed)
- Material balances (steady-state and transient)
- Component balances and degrees of freedom analysis
- Reactive systems and combustion
- Recycle, bypass, and purge streams
- Energy balances and the First Law of Thermodynamics
- Sensible and latent heat calculations
- Energy balances on reactive systems

### 🔄 Thermodynamics (In Progress)
- Coming soon...

### 📋 Fluid Mechanics (Planned)
- To be converted...

### 📋 Heat Transfer (Planned)
- To be converted...

### 📋 Mass Transfer (Planned)
- To be converted...

### 📋 Chemical Reaction Engineering (Planned)
- To be converted...

### 📋 Chemical and Phase Equilibria (Planned)
- To be converted...

## Conversion Status

| Topic | LaTeX Source | Markdown | Status |
|-------|--------------|----------|--------|
| Mass and Energy Balance | ✅ | ✅ | Complete |
| Thermodynamics | ✅ | 🔄 | In Progress |
| Fluid Mechanics | ✅ | ⏳ | Pending |
| Heat Transfer | ✅ | ⏳ | Pending |
| Mass Transfer | ✅ | ⏳ | Pending |
| Chemical Reaction Engineering | ✅ | ⏳ | Pending |
| Chemical and Phase Equilibria | ✅ | ⏳ | Pending |

## Features

- **Interactive Examples**: Over 100 worked example problems with step-by-step solutions
- **Mathematical Rigor**: 500+ equations properly formatted with LaTeX/MathJax
- **Visual Learning**: Organized with colored admonition boxes for concepts, formulas, and examples
- **Jupyter Book Ready**: All content formatted for immediate use with Jupyter Book
- **Searchable**: Full-text search capability when deployed as web documentation
- **Mobile Friendly**: Responsive design works on all devices

## Building the Documentation

To build the web documentation using Jupyter Book:

```bash
# Install Jupyter Book (if not already installed)
pip install jupyter-book

# Build the book
jupyter-book build .

# View the built HTML
# Open _build/html/index.html in your browser
```

## Content Quality

All conversions follow strict quality guidelines:

- ✅ 100% of original LaTeX content preserved
- ✅ No additions or modifications to source material
- ✅ All mathematical equations properly formatted
- ✅ Proper display math with blank lines before/after
- ✅ All examples and solutions complete
- ✅ Consistent formatting throughout

## Conversion Process

Each LaTeX file conversion includes:

1. **Main Markdown File**: Complete content in Jupyter Book format
2. **LaTeX Macros Documentation**: Reference for all custom commands
3. **Images List**: Inventory of all figures and graphics
4. **Conversion Notes**: Detailed process documentation

See `docs/` folder for complete conversion documentation.

## Contributing

This is a study guide repository. The content is being systematically converted from LaTeX source files.

### Conversion Guidelines

When converting new topics:
1. Follow the established conversion patterns
2. Use appropriate Jupyter Book directives
3. Maintain 100% content fidelity to source
4. Document all custom LaTeX macros
5. Create conversion notes for each topic

## Technical Details

### LaTeX to Markdown Mapping

- `conceptbox` → `{note}`
- `formulabox` → `{important}`
- `examplebox` → `{prf:example}`
- `stepbox` → `{dropdown} Solution Steps`
- `keybox` → `{admonition} :class: tip`

### Math Formatting

- Inline math: `$equation$`
- Display math: `$$equation$$` (with blank lines before/after)
- All standard LaTeX math commands supported via MathJax

## License

See [LICENSE](LICENSE) file for details.

## Acknowledgments

This study guide is designed to help chemical engineers prepare for the Professional Engineering (PE) exam. The content covers fundamental and advanced topics in chemical engineering process fundamentals.

---

**Last Updated**: November 2025

**Status**: Active development - Converting LaTeX sources to Jupyter Book format
