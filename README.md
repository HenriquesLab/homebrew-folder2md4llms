# Homebrew Tap for folder2md4llms

[![Test Formula](https://github.com/HenriquesLab/homebrew-folder2md4llms/actions/workflows/test-formula.yml/badge.svg)](https://github.com/HenriquesLab/homebrew-folder2md4llms/actions/workflows/test-formula.yml)
[![Test Installation](https://github.com/HenriquesLab/homebrew-folder2md4llms/actions/workflows/test-installation.yml/badge.svg)](https://github.com/HenriquesLab/homebrew-folder2md4llms/actions/workflows/test-installation.yml)

This tap provides the [folder2md4llms](https://github.com/HenriquesLab/folder2md4llms) package for Homebrew.

## Installation

```bash
brew tap henriqueslab/folder2md4llms
brew install folder2md4llms
```

## Usage

After installation, you can use the `folder2md` command:

```bash
folder2md /path/to/your/project
```

### Basic Examples

```bash
# Convert current directory to markdown
folder2md .

# Convert specific directory with output file
folder2md /path/to/project --output project.md

# Convert with token limit
folder2md /path/to/project --limit 10000t

# Convert with character limit
folder2md /path/to/project --limit 50000c

# Enable condensing mode
folder2md /path/to/project --condense

# Copy to clipboard (macOS)
folder2md /path/to/project --clipboard

# Generate ignore file template
folder2md --init-ignore
```

## Features

- **Smart Condensing**: Automatically condenses code to fit within token/character limits
- **Document Conversion**: Converts PDF, DOCX, XLSX, RTF, and PowerPoint files to text
- **Binary File Analysis**: Provides intelligent descriptions for images, archives, and executables
- **Jupyter Notebook Support**: Converts .ipynb files with proper formatting
- **Configurable**: Use `folder2md.yaml` files for project-specific settings
- **Advanced Filtering**: Uses `.gitignore`-style patterns with `.folder2md_ignore` files
- **Cross-platform**: Works on macOS, Linux, and Windows

## Configuration

Create a `folder2md.yaml` file in your project root:

```yaml
# Token or character limit
limit: 10000t  # or 50000c for characters

# Enable condensing
condense: true

# Custom ignore patterns
ignore:
  - "*.log"
  - "temp/"
  - "build/"

# Output settings
output: "project.md"
clipboard: false
verbose: true
```

## Testing

This tap includes comprehensive GitHub Actions workflows to test:
- Formula syntax and installation
- Cross-platform compatibility (macOS and Linux)
- Core functionality and edge cases
- Weekly regression testing

## About

folder2md4llms is an enhanced tool that converts folder contents into markdown format optimized for Large Language Model (LLM) consumption. It's designed to be fast, configurable, and easy to use.

Key benefits:
- **LLM-Optimized**: Structured output perfect for AI model consumption
- **Intelligent Processing**: Handles various file types with appropriate converters
- **Flexible Output**: Multiple output formats and size limits
- **Developer-Friendly**: Integrates well with development workflows

## Updating

To update to the latest version:

```bash
brew update
brew upgrade folder2md4llms
```

## Development

This formula was generated using homebrew-pypi-poet and includes all Python dependencies as resources for reliable, isolated installation.

### Formula Details

- **Python Version**: Requires Python 3.11+
- **Dependencies**: All Python packages are bundled as resources
- **Virtual Environment**: Uses Homebrew's virtualenv system for isolation
- **Platform Support**: macOS (primary), Linux (via Homebrew on Linux)

## Support

For issues with the tool itself, please visit the [main repository](https://github.com/HenriquesLab/folder2md4llms/issues).

For issues with this Homebrew tap, please [create an issue](https://github.com/HenriquesLab/homebrew-folder2md4llms/issues) in this repository.

## License

This tap is released under the same license as the main project (MIT).