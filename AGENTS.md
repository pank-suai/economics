# Agent Guidelines for Economics Notes Project

## Build Commands
- **Build PDF**: `typst compile index.typ index.pdf`
- **Watch mode**: `typst watch index.typ index.pdf`
- **No linting or testing framework** - this is a Typst documentation project

## Code Style Guidelines

### File Structure
- Source files: `src/000_topic_name.typ` (numbered with leading zeros)
- Images: `src/images/000_image_name.png` (numbered with leading zeros)
- Main file: `index.typ` imports all source files

### Typst Conventions
- **Imports**: Use `#import "lib/ilm.typ": *` for library imports
- **Includes**: Use `#include "src/filename.typ"` for content files
- **Comments**: `//` for single-line, `/* */` for multi-line
- **Language**: Russian content (`#set text(lang: "ru")`)
- **Spacing**: 2 spaces for indentation, consistent vertical spacing

### Naming Conventions
- Files: `000_descriptive_name.typ` (underscore-separated, Russian)
- Functions/variables: camelCase for custom functions
- Headings: Use `=` for main headings, descriptive Russian titles

### Formatting
- **Text**: 12pt font, justified paragraphs with optimized linebreaks
- **Math**: Equation numbering enabled (`#set math.equation(numbering: "1")`)
- **References**: Lowercase refs (`#show ref: it => { lower(it) }`)

### Error Handling
- No explicit error handling needed for Typst compilation
- Build will fail on syntax errors - fix by checking Typst documentation