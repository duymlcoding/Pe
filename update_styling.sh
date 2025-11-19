#!/bin/bash

# Script to update markdown styling in chapter files

# Files to update
FILES=(
    "/home/user/Pe/mynotes/chapters/fluidmechanics.md"
    "/home/user/Pe/mynotes/chapters/thermodynamics.md"
    "/home/user/Pe/mynotes/chapters/heattransfer.md"
    "/home/user/Pe/mynotes/chapters/masstransfer.md"
    "/home/user/Pe/mynotes/chapters/chemicalreactionengineering.md"
    "/home/user/Pe/mynotes/chapters/chemicalandphaseequilibria.md"
)

for FILE in "${FILES[@]}"; do
    echo "Processing $FILE..."

    # Create backup
    cp "$FILE" "${FILE}.bak"

    # Replace {admonition} Important Formula with {important}
    sed -i 's/^```{admonition} Important Formula$/```{important}/g' "$FILE"

    # Replace {admonition} Key Concept with {note}
    sed -i 's/^```{admonition} Key Concept$/```{note}/g' "$FILE"

    # Replace {admonition} Key Variables & Definitions with {admonition} Term Definitions + :class: tip
    # This is a two-step process - first mark it, then add the class line
    sed -i 's/^```{admonition} Key Variables & Definitions$/```{admonition} Term Definitions\n:class: tip/g' "$FILE"

    # Replace {admonition} Variable Definitions with {admonition} Term Definitions + :class: tip
    sed -i 's/^```{admonition} Variable Definitions$/```{admonition} Term Definitions\n:class: tip/g' "$FILE"

    # Replace {admonition} Solution Steps with {dropdown} Solution Steps
    sed -i 's/^```{admonition} Solution Steps$/```{dropdown} Solution Steps/g' "$FILE"

    echo "Completed $FILE"
done

echo "All files updated!"
