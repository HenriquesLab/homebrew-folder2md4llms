# Homebrew Tap for folder2md4llms

[![Update Binary Cask](https://github.com/HenriquesLab/homebrew-folder2md4llms/actions/workflows/update-binary-formula.yml/badge.svg)](https://github.com/HenriquesLab/homebrew-folder2md4llms/actions/workflows/update-binary-formula.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![macOS](https://img.shields.io/badge/macOS-Intel%20%26%20Apple%20Silicon-blue.svg)](https://github.com/HenriquesLab/homebrew-folder2md4llms)

This tap provides the [folder2md4llms](https://github.com/HenriquesLab/folder2md4llms) binary package for Homebrew as a standalone executable.

## Installation

```bash
brew tap henriqueslab/homebrew-folder2md4llms
brew install --cask folder2md4llms-binary
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

## Binary Distribution

This tap provides a **pre-compiled binary cask** for maximum reliability and performance:

### ✅ Binary Benefits
- **No Python required** - self-contained executable
- **Fast startup** - no import overhead
- **No dependency conflicts** - completely isolated
- **Simple installation** - single file download
- **Cross-platform** - works on Intel and Apple Silicon

### ❌ No Build Dependencies
- No Python environment required
- No compilation during installation
- No dependency version conflicts
- No virtual environment management

This eliminates installation issues completely by providing a standalone executable that works out of the box.

## Testing

This tap includes comprehensive GitHub Actions workflows to test:
- **Binary Cask Updates**: Automated updates from upstream releases (update-binary-formula.yml)
- **Multi-platform Testing**: Installation testing on Intel and Apple Silicon macOS
- **Binary Verification**: SHA256 hash validation for download integrity
- **Functionality Testing**: Comprehensive feature testing including configuration files, ignore patterns, and output generation
- **Automated Updates**: Automatic binary updates when new versions are released
- **Installation Validation**: Ensures binary works correctly after installation

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
brew upgrade --cask folder2md4llms-binary
```

## Development

This cask provides a pre-compiled binary of folder2md4llms for easy installation without any build requirements.

### Cask Details

- **Python Version**: Not required - standalone binary
- **Dependencies**: None - self-contained executable
- **Virtual Environment**: Not needed - binary runs directly
- **Platform Support**: macOS Intel and Apple Silicon
- **Installation Method**: Binary cask download with automatic verification

### Quality Assurance

The binary cask includes:
- **Automated Updates**: GitHub Actions workflow monitors upstream releases
- **Binary Verification**: SHA256 hash validation for download integrity
- **Functionality Testing**: Comprehensive testing of core features
- **Multi-architecture Support**: Native binaries for Intel and Apple Silicon
- **Regular Monitoring**: Automated updates when new binaries are released

## Support

For issues with the tool itself, please visit the [main repository](https://github.com/HenriquesLab/folder2md4llms/issues).

For issues with this Homebrew tap, please [create an issue](https://github.com/HenriquesLab/homebrew-folder2md4llms/issues) in this repository.

## License

This tap is released under the same license as the main project (MIT).