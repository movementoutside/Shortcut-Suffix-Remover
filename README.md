# Shortcut Suffix Remover

Automatically removes the **" - Shortcut"** suffix that Windows adds to newly created shortcut files.

## Overview

Shortcut Suffix Remover is a lightweight Windows utility designed to automatically remove the default **" - Shortcut"** text appended to shortcut filenames when they are created.

The application runs in the background and helps maintain cleaner, more organized shortcut names without requiring any manual renaming.

## Features

- Automatically removes the **" - Shortcut"** suffix from newly created shortcuts.
- Runs silently in the background.
- Lightweight and simple to use.
- No manual intervention required.
- Designed specifically for Windows environments.

## Requirements

- Windows operating system
- AutoHotkey v2.0.19 or later
- Python (used during development)

## Technologies Used

- Python
- ChatGPT
- AutoHotkey v2.0.19

## Installation

1. Download the latest release.
2. Ensure that **AutoHotkey v2.0.19** (or a compatible newer version) is installed on your system.
3. Run the application.
4. The program will automatically monitor newly created shortcuts and remove the **" - Shortcut"** suffix when detected.

## Usage

Once launched, Shortcut Suffix Remover operates automatically in the background.

Whenever Windows creates a new shortcut containing the default **" - Shortcut"** suffix, the application will rename the file and remove the suffix without requiring user interaction.

### Example

Before:

```
My Application - Shortcut.lnk
```

After:

```
My Application.lnk
```

## Purpose

Windows automatically appends the text **" - Shortcut"** to shortcut filenames in certain configurations. This utility exists to streamline shortcut naming and improve desktop and folder organization by removing that suffix automatically.

## License

This project is licensed under the **GNU General Public License v3.0 (GPL-3.0)**.

For more information, see the LICENSE file included in this repository.

## Author

**movementoutside**

## Disclaimer

This software is provided "as is", without warranty of any kind. Use it at your own risk. Always test software in your environment before deploying it on production systems.

## Contributions

Contributions, suggestions, bug reports, and improvements are welcome. Feel free to open an issue or submit a pull request.

---

© movementoutside
