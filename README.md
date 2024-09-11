# Make VS Code on Windows feel more like Vim

Extensions and settings that make using VS Code faster and feel more like Vim, along with some visual changes.

The CSS (`custom.css`) should work with any color theme, but can be easily modified to better suit your needs by adjusting the root variables at the top of the file.

I also use this repo to back up some configs for myself, so not everything here will be useful/relevant to others (terminal prompt, Firefox theme, etc.)

## Table of Contents

-   [Features](#features)
-   [Installation](#installation)
-   [Dependencies](#dependencies)
    -   [Required](#required)
    -   [Recommended](#recommended)
    -   [General](#general)
        -   [Extensions](#extensions)
        -   [Windows](#windows)
        -   [Terminal and Bash](#terminal-and-bash)
        -   [Firefox](#firefox)
-   [Preview](#preview)

## Features

-   Edit files, switch tabs and groups, toggle integrated terminal, navigate, create, rename, and delete files, etc. with keyboard shortcuts.
-   Maximize screen space by hiding many of the non-essential UI elements.
-   Cool (😎) background blur on different widgets.
-   And more QoL improvements.

## Installation

1. Install the extensions listed below (also the font if you want to use the same one, but it can be easily changed).
2. Copy the contents of `vsc_settings.json` into your VS Code `settings.json`.
3. Copy the contents of `vsc_keybindings.json` into your VS Code `keybindings.json`.
4. Add the path to the `custom.css` file into your `settings.json`.
5. If you want the Vesper theme for Windows Terminal, copy the contents of `wt_settings.json` into your Windows Terminal `settings.json`
6. If you want my bash settings, copy and append the contents of `bash.bashrc` into your `.bashrc`/`bash.bashrc`.
7. If you want fast virtual desktop switching on Windows, install AutoHotkey and the script from the link below, then replace the `user_config.ahk` with the one in the repo.

## Dependencies

### Required

Required as the base for this setup.

-   [Vim for VS Code](aka.ms/vscodevim) for Vim keybindings.
-   [Toggle Boolean](https://marketplace.visualstudio.com/items?itemName=silesky.toggle-boolean) for easy boolean toggling.
-   [Apc Customize UI++](https://marketplace.visualstudio.com/items?itemName=drcika.apc-extension) for customizing the UI.
-   [JetBrains Mono Nerd Font](https://www.nerdfonts.com/font-downloads) for the font.

### Recommended

Recommended to get my look.

-   [Vesper](https://marketplace.visualstudio.com/items?itemName=raunofreiberg.vesper) for the color theme.
-   [Symbols](https://marketplace.visualstudio.com/items?itemName=miguelsolorio.symbols) for file icons.
-   [Fluent Icons](https://marketplace.visualstudio.com/items?itemName=miguelsolorio.fluent-icons) for product icons.
-   [File Path Bar](https://marketplace.visualstudio.com/items?itemName=wraith13.file-path-bar) to show current file path in the status bar.

### General

#### Extensions

Good extensions for any setup.

-   [Error Lens](https://marketplace.visualstudio.com/items?itemName=usernamehw.errorlens) for nicer errors.
-   [Auto Rename Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag) for renaming tags.
-   [Better Comments](https://marketplace.visualstudio.com/items?itemName=aaron-bond.better-comments) for colorful comments.
-   [Tailwind Fold](https://marketplace.visualstudio.com/items?itemName=stivo.tailwind-fold) for folding Tailwind CSS classes.
-   [Path Intellisense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.path-intellisense) for autocompleting paths.
-   [Activitus Bar](https://marketplace.visualstudio.com/items?itemName=Gruntfuggly.activitusbar) to move the activity bar to the status bar (I have it hidden, but it's still nice to have).
-   [Lorem ipsum](https://marketplace.visualstudio.com/items?itemName=Tyriar.lorem-ipsum) for generating placeholder text.
-   [Google Fonts](https://marketplace.visualstudio.com/items?itemName=lior-chamla.google-fonts) to easily import Google Fonts.
-   [Insert Unicode](https://marketplace.visualstudio.com/items?itemName=brunnerh.insert-unicode) for searching and inserting Unicode characters.

#### Windows

Easier switching between virtual desktops in windows along with keyboard shortcuts to open and close programs.

-   [AutoHotkey v1.1](https://autohotkey.com/download/1.1/AutoHotkey_1.1.37.02_setup.exe) for running the script.
-   [windows-desktop-switcher](https://github.com/pmb6tz/windows-desktop-switcher) for switching between virtual desktops.

#### Terminal and Bash

A fancier Windows terminal experience.

-   [Vesper](/wt_settings.json) for the color scheme (created from the VS Code color theme).
-   [Oh My Posh](https://ohmyposh.dev/) for the terminal prompt.
-   [zoxide](https://github.com/ajeetdsouza/zoxide) for a smarter cd command.
-   [huvix theme](https://github.com/JanDeDobbeleer/oh-my-posh/blob/main/themes/huvix.omp.json) as the prompt theme.
-   [j](/bash.bashrc) for easily compiling and running Java files (custom bash function).
-   [lazygit](/bash.bashrc) for lazy git add, commit, and push.

#### Firefox

A minimal dark color theme for the browser.

-   [Firefox Color](https://addons.mozilla.org/en-US/firefox/addon/firefox-color/) for using the theme.
-   [Vesper](https://color.firefox.com/?theme=XQAAAALmAQAAAAAAAABBKYhm849SCicxcT_m3XcGHf3p79EhVPVdQf7xcfZ9PTtZXOCodCzcptf_KvQq1gcisAhFTtwwGpk7crCHzaRi488HBNPECKBR3kPd_bFCHuLt3mnVEyTaBiOKjsZiay5oi-dFS5b5uiSa7DXtuxeEJjOpGV4V620WVWZtiklu9Wk8XlCXZzPIbjVFl2ObqLOYO_wwoLAXiNzyslM6MBe4Vx8o4bsVq58EaF2p9nhl4P3nj61ACKDu1JzG03OxiEtgfqgFf6pKwuPgyIFi6iYuPz2usMTEsg7VCTQnMs8kXLxetOr5q__utd9q) for the theme (not actually Vesper, just made it look similar).

## Preview

![VS Code Preview Image 1](/preview/vscode-1.jpg)
![VS Code Preview Image 2](/preview/vscode-2.jpg)
![VS Code Preview Image 3](/preview/vscode-3.jpg)
![Windows Terminal Preview Image 1](/preview/wt-1.jpg)
