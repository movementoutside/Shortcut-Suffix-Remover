# Shortcut Suffix Remover

A lightweight Windows utility written in **AutoHotkey** that automatically removes the ` - Shortcut` suffix from shortcuts created on the Desktop.

For example:

```text
Visual Studio Code - Shortcut
```

becomes:

```text
Visual Studio Code
```

The script runs quietly in the background and checks the current user's Desktop for newly created `.lnk` files.

## Features

- Automatically monitors Desktop shortcuts.
- Removes only the exact ` - Shortcut` suffix.
- Runs silently in the background.
- Uses the current user's Desktop path automatically — no hard-coded personal paths.
- Does not overwrite an existing shortcut if the cleaned name already exists.
- The suffix and scan interval can be adjusted at the top of the script.

## Requirements

- Windows
- [AutoHotkey v1.1](https://www.autohotkey.com/)

> This version uses AutoHotkey v1 syntax.

## Usage

1. Install AutoHotkey v1.1.
2. Download or clone this repository.
3. Run `Shortcut Suffix Remover.ahk`.
4. Create a shortcut on the Desktop.
5. If Windows names it with the ` - Shortcut` suffix, the suffix will be removed automatically within about one second.

While the script is running, the AutoHotkey tray icon remains visible in the Windows notification area.

## Run at Windows startup

If you want the utility to start automatically when you sign in:

1. Press `Win + R`.
2. Enter `shell:startup`.
3. Create a shortcut to `Shortcut Suffix Remover.ahk` inside that folder.

## Configuration

These values are near the top of the script:

```ahk
ShortcutSuffix := " - Shortcut"
CheckIntervalMs := 1000
```

`ShortcutSuffix` can be changed if Windows uses a different localized suffix. `CheckIntervalMs` controls how frequently the Desktop is checked.

## Safety behavior

If a shortcut with the cleaned target name already exists, the script leaves the new shortcut unchanged instead of overwriting the existing file.

## Why this project exists

Windows can append ` - Shortcut` when shortcuts are created. This small automation removes that repetitive cleanup step and keeps Desktop shortcut names concise.
