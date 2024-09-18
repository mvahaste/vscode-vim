# Make VS Code on Windows feel more like Vim

Extensions and settings that make using VS Code faster and feel more like Vim, along with some visual changes.

The CSS should work with any color theme, but can be easily modified to better suit your needs by adjusting the root variables at the top of the file.

I also use this repo to back up some configs for myself, so not everything here will be useful/relevant to others (terminal prompt, browser settings, etc.)

## Table of Contents

-   [Features](#features)
    -   [Keyboard Shortcuts](#keyboard-shortcuts)
        -   [General](#general)
        -   [Vim](#vim)
-   [Installation](#installation)
-   [Dependencies](#dependencies)
    -   [Required](#required)
    -   [Recommended](#recommended)
    -   [General](#general)
        -   [Extensions](#extensions)
        -   [Windows](#windows)
        -   [Terminal and Bash](#terminal-and-bash)
        -   [Zen Browser](#zen-browser)
-   [Preview](#preview)
    -   [One Dark Pro Darker](#one-dark-pro-darker)
    -   [Vesper](#vesper)

## Features

-   Edit files, switch tabs and groups, toggle integrated terminal, navigate, create, rename, cut, delete files & folders, etc. with keyboard shortcuts.
-   Maximize screen space by hiding many of the non-essential UI elements.
-   Cool (😎) background blur on different widgets.
-   And more QoL improvements.

### Keyboard Shortcuts

#### General

| Key Combination         | Command                                             |
| ----------------------- | --------------------------------------------------- |
| `A`                     | Create New File/Folder in Explorer                  |
| `R`                     | Rename File/Folder in Explorer                      |
| `Y`                     | Copy (yank) File/Folder in Explorer                 |
| `M`                     | Cut (move) File/Folder in Explorer                  |
| `P`                     | Paste (put) File/Folder in Explorer                 |
| `D D`                   | Delete File/Folder in Explorer                      |
| `[HJKL]`                | Navigate Files/Folders in Explorer                  |
| `Ctrl + [HJKL]`         | Focus Editor Group                                  |
| `Ctrl + Shift + [HJKL]` | Move Editor Group                                   |
| `Ctrl + Shift + .`      | Increase View Size                                  |
| `Ctrl + Shift + ,`      | Decrease View Size                                  |
| `Ctrl + E`              | Toggle Focus between Editor and Side Bar (Explorer) |
| `Ctrl + T`              | Toggle Focus between Terminal and Editor            |
| `Ctrl + Y`              | Toggle Terminal                                     |

#### Vim

| Key Combination  | Command                           |
| ---------------- | --------------------------------- |
| `Space`          | Default Vim Leader Key            |
| `Leader + F + F` | Open Search                       |
| `Leader + W`     | Save (`:w`)                       |
| `Leader + Q`     | Quit (`:q`)                       |
| `Leader + S`     | Split Editor (`:vsp`)             |
| `Leader + D`     | Go to Definition                  |
| `Leader + A`     | Open Quick Fix                    |
| `Leader + H`     | Open Hover                        |
| `Leader + /`     | Comment/Uncomment Line            |
| `Leader + I`     | Toggle Boolean                    |
| `Tab`            | Cycle to Next Editor in Group     |
| `Shift + Tab`    | Cycle to Previous Editor in Group |
| `] + D`          | Go to Next Diagnostic             |
| `[ + D`          | Go to Previous Diagnostic         |

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

-   Color themes:
    -   [Gruvbox Light/Dark Hard](https://marketplace.visualstudio.com/items?itemName=jdinhlife.gruvbox) (current theme, no screenshots).
    -   [One Dark Pro Darker](https://marketplace.visualstudio.com/items?itemName=zhuangtongfa.Material-theme) (used in the screenshots).
    -   [Vesper](https://marketplace.visualstudio.com/items?itemName=raunofreiberg.vesper) (also has screenshots in the preview section).
    -   [Noir Essence Dark](https://marketplace.visualstudio.com/items?itemName=u1145h.u1145h-heme-ark) (no screenshots).
-   File icon themes:
    -   [Gruvbox Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=JonathanHarty.gruvbox-material-icon-theme) for gruvbox style icons.
    -   [Symbols](https://marketplace.visualstudio.com/items?itemName=miguelsolorio.symbols) for general file icons.
-   [Fluent Icons](https://marketplace.visualstudio.com/items?itemName=miguelsolorio.fluent-icons) for product icons.
-   [File Path Bar](https://marketplace.visualstudio.com/items?itemName=wraith13.file-path-bar) to show current file path in the status bar.
-   [Lifeline: Clock & Battery](https://marketplace.visualstudio.com/items?itemName=kjhx.vscode-lifeline) to show the time and battery percentage in the status bar.

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
-   [jcr](/bash.bashrc) for easily compiling and running Java files (`jcr <filename> <arguments>`).
-   [lazygit](/bash.bashrc) for lazy git add, commit, and push (`lazygit <message>`).

#### Zen Browser

A modern, feature-rich, privacy focused browser based on Firefox.

-   [Zen Browser](https://zen-browser.app/) for the browser.
-   [Hide Window Buttons](https://zen-browser.app/themes/5a007026-0801-4a5d-9740-f17dc1c3ff21) to hide all window controls.
-   [Remove Browser Padding](https://zen-browser.app/themes/680424a8-a818-406b-98c5-7726214e2a9f) to remove the extra padding on the website panel.
-   [Drop Shadow](https://zen-browser.app/themes/abc2d6d8-ea9c-4313-a99c-fb1e76e8b3e5) for a subtle drop shadow for the website panel.
-   [Bookmark Toolbar Tweaks](https://zen-browser.app/themes/ea1a5ace-f698-4b45-ab88-6e8bd3a563f0) to center the bookmarks.
-   [Now Playing Indicator](https://zen-browser.app/themes/2e3369c7-e450-46ba-8794-75ccb0de5e48) for a better now playing indicator in the sidebar.
-   [Cleaner Extension Menu](https://zen-browser.app/themes/1e86cf37-a127-4f24-b919-d265b5ce29a0) to clean up the extensions menu.
-   [Floating URLbar](https://zen-browser.app/themes/83a641f7-eca9-4c0f-91af-45627bef0539) for a fancy floating URL bar when focused.
-   [Vesper Dark](https://zen-browser.app/themes/17f70712-4530-42d0-ba0f-fa25bcbf2ddc) for the color theme.

## Preview

### One Dark Pro Darker

![One Dark Pro Darker 1](/assets/odpd-1.png)
![One Dark Pro Darker 2](/assets/odpd-2.png)
![One Dark Pro Darker 3](/assets/odpd-3.png)

### Vesper

These screenshots are a bit older but everything is still doable (changing the theme gets you most of the way there), I just switched to a different theme.

![Vesper 1](/assets/vesper-1.jpg)
![Vesper 2](/assets/vesper-2.jpg)
![Vesper 3](/assets/vesper-3.jpg)
