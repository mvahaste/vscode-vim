# Make VSCode on Windows feel more like Vim

Settings that make VS Code faster and feel more like Vim.

## Dependencies

These settings rely on the following:

- [Vim for VS Code](aka.ms/vscodevim)
- [Toggle Boolean](https://marketplace.visualstudio.com/items?itemName=silesky.toggle-boolean)
- [Apc Customize UI++](https://marketplace.visualstudio.com/items?itemName=drcika.apc-extension)
- [JetBrains Mono Nerd Font](https://www.nerdfonts.com/font-downloads)

### Nice to have

I also recommend installing these:

- [Error Lens](https://marketplace.visualstudio.com/items?itemName=usernamehw.errorlens)
- [Auto Close Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-close-tag)
- [Auto Rename Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag)
- [Better Comments](https://marketplace.visualstudio.com/items?itemName=aaron-bond.better-comments)
- [Path Intellisense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.path-intellisense)
- [Activitus Bar](https://marketplace.visualstudio.com/items?itemName=Gruntfuggly.activitusbar)
- [Lorem ipsum](https://marketplace.visualstudio.com/items?itemName=Tyriar.lorem-ipsum)
- [Google Fonts](https://marketplace.visualstudio.com/items?itemName=lior-chamla.google-fonts)
- [Insert Unicode](https://marketplace.visualstudio.com/items?itemName=brunnerh.insert-unicode)

### Easier Virtual Desktop switching in Windows:
- [AutoHotkey v1.1](https://autohotkey.com/download/1.1/AutoHotkey_1.1.37.02_setup.exe)
- [windows-desktop-switcher](https://github.com/pmb6tz/windows-desktop-switcher) (custom config below)

## Settings

`settings.json`

```json5
{
	"apc.stylesheet": {
		".part.statusbar": "box-shadow: 0px 0px 6px 0px var(--vscode-scrollbar-shadow);",
		".part.sidebar": "box-shadow: 0px 32px 6px 0px var(--vscode-scrollbar-shadow);",
		".editor .scrollbar .slider": "visibility: hidden;",
		".editor .scrollbar:hover .slider": "visibility: initial"
	},
	"apc.font.family": "JetBrainsMono Nerd Font",
	"apc.header": {
		"height": 30
	},
	"explorer.confirmDelete": false,
	"explorer.confirmDragAndDrop": false,
	"editor.lightbulb.enabled": "off",
	"editor.stickyScroll.enabled": false,
	"editor.linkedEditing": true,
	"editor.suggest.insertMode": "replace",
	"editor.lineNumbers": "relative",
	"editor.cursorSurroundingLines": 10,
	"editor.minimap.enabled": false,
	"breadcrumbs.enabled": false,
	"vim.leader": "<space>",
	"vim.foldfix": true,
	"vim.hlsearch": true,
	"vim.useSystemClipboard": true,
	"vim.normalModeKeyBindingsNonRecursive": [
		// Semicolon opens vim command line
		{
			"before": [";"],
			"commands": ["vim.showQuickpickCmdLine"]
		},
		// Leader+F+F opens quick open
		{
			"before": ["<leader>", "f", "f"],
			"commands": ["workbench.action.quickOpen"]
		},
		// Leader+W to save
		{
			"before": ["<leader>", "w"],
			"commands": [":w"]
		},
		// Leader+Q to quit
		{
			"before": ["<leader>", "q"],
			"commands": [":q"]
		},
		// Leader+/ to comment/uncomment line
		{
			"before": ["<leader>", "/"],
			"commands": ["editor.action.commentLine"]
		},
		// Leader+I to toggle boolean
		{
			"before": ["<leader>", "i"],
			"commands": ["extension.toggleBool"]
		},
		// Tab cycles editors in same group
		{
			"before": ["<tab>"],
			"commands": ["workbench.action.nextEditorInGroup"]
		},
		{
			"before": ["<shift+tab>"],
			"commands": ["workbench.action.previousEditorInGroup"]
		},
		// Leader+S to split editor
		{
			"before": ["<leader>", "s"],
			"commands": [":vsp"]
		},
		// Leader+D to go to definition
		{
			"before": ["<leader>", "d"],
			"commands": ["editor.action.goToDeclaration"]
		},
		// Leader+A to open quick fix
		{
			"before": ["<leader>", "a"],
			"commands": ["editor.action.quickFix"]
		},
		// Leader+H to open hover
		{
			"before": ["<leader>", "h"],
			"commands": ["editor.action.showHover"]
		},
		// ]+D to go to next diagnostic
		{
			"before": ["]", "d"],
			"commands": ["editor.action.marker.next"]
		},
		// [ + D to go to previous diagnostic
		{
			"before": ["[", "d"],
			"commands": ["editor.action.marker.prev"]
		}
	],
	"vim.visualModeKeyBindingsNonRecursive": [
		// Leader+/ to comment/uncomment line
		{
			"before": ["<leader>", "/"],
			"commands": ["editor.action.commentLine"]
		}
	],
	"editor.matchBrackets": "never",
	"workbench.tips.enabled": false,
	"editor.renderLineHighlight": "none",
	"editor.copyWithSyntaxHighlighting": false,
	"diffEditor.ignoreTrimWhitespace": false,
	"editor.emptySelectionClipboard": false,
	"workbench.editor.enablePreview": false,
	"window.newWindowDimensions": "inherit",
	"editor.multiCursorModifier": "ctrlCmd",
	"files.trimTrailingWhitespace": true,
	"diffEditor.renderSideBySide": false,
	"editor.snippetSuggestions": "top",
	"editor.detectIndentation": false,
	"files.insertFinalNewline": true,
	"files.trimFinalNewlines": true,
	"editor.guides.indentation": false,
	"workbench.tree.renderIndentGuides": "none",
	// "workbench.editor.showTabs": "single",
}
```

`keybindings.json`

```json5
[
	{
		"key": "ctrl+shift+c",
		"command": "-workbench.action.terminal.copySelection",
		"when": "terminalFocus && terminalHasBeenCreated && terminalTextSelected || terminalFocus && terminalProcessSupported && terminalTextSelected"
	},
	{
		"key": "ctrl+shift+c",
		"command": "-workbench.action.terminal.openNativeConsole",
		"when": "!terminalFocus"
	},
	// Ctrl+W close editor
	{
		"key": "ctrl+w",
		"command": "workbench.action.closeActiveEditor"
	},
	// Ctrl+W close active group when no editor is open
	{
		"key": "ctrl+w",
		"command": "workbench.action.closeGroup",
		"when": "!editorFocus"
	},
	// Ctrl+T toggle between terminal and editor
	{
		"key": "ctrl+t",
		"command": "workbench.action.terminal.focus"
	},
	{
		"key": "ctrl+t",
		"command": "workbench.action.focusActiveEditorGroup",
		"when": "terminalFocus"
	},
	// Ctrl+Y toggle terminal (open or close)
	{
		"key": "ctrl+y",
		"command": "workbench.action.terminal.toggleTerminal"
	},
	// Ctrl+Shift+. increase editor width
	{
		"key": "ctrl+shift+.",
		"command": "workbench.action.increaseViewSize"
	},
	// Ctrl+Shift+, decrease editor width
	{
		"key": "ctrl+shift+,",
		"command": "workbench.action.decreaseViewSize"
	},
	// Ctrl+H focus left group
	{
		"key": "ctrl+h",
		"command": "workbench.action.focusLeftGroup"
	},
	// Ctrl+Shift+H move group into left group
	{
		"key": "ctrl+shift+h",
		"command": "workbench.action.moveEditorToLeftGroup"
	},
	// Ctrl+L focus right group
	{
		"key": "ctrl+l",
		"command": "workbench.action.focusRightGroup"
	},
	// Ctrl+Shift+L move group into right group
	{
		"key": "ctrl+shift+l",
		"command": "workbench.action.moveEditorToRightGroup"
	},
	// Ctrl+J focus below group
	{
		"key": "ctrl+j",
		"command": "workbench.action.focusBelowGroup"
	},
	// Ctrl+Shift+J move group into below group
	{
		"key": "ctrl+shift+j",
		"command": "workbench.action.moveEditorToBelowGroup"
	},
	// Ctrl+K focus above group
	{
		"key": "ctrl+k",
		"command": "workbench.action.focusAboveGroup"
	},
	// Ctrl+Shift+K move group into above group
	{
		"key": "ctrl+shift+k",
		"command": "workbench.action.moveEditorToAboveGroup"
	},
	// Ctrl+E toggle focus between editor and explorer
	{
		"key": "ctrl+e",
		"command": "workbench.action.focusSideBar"
	},
	{
		"key": "ctrl+e",
		"command": "workbench.action.focusActiveEditorGroup",
		"when": "sideBarFocus"
	},
	// A key creates new file/folder in explorer
	{
		"key": "a",
		"command": "explorer.newFile",
		"when": "explorerViewletVisible && filesExplorerFocus && !inputFocus"
	},
	// R key renames file/folder in explorer
	{
		"key": "r",
		"command": "renameFile",
		"when": "explorerViewletVisible && filesExplorerFocus && !inputFocus"
	},
	// C key copies file/folder in explorer
	{
		"key": "c",
		"command": "filesExplorer.copy",
		"when": "explorerViewletVisible && filesExplorerFocus && !inputFocus"
	},
	// P key pastes file/folder in explorer
	{
		"key": "p",
		"command": "filesExplorer.paste",
		"when": "explorerViewletVisible && filesExplorerFocus && !inputFocus"
	},
	// D+Y deletes file/folder in explorer
	{
		"key": "d y",
		"command": "moveFileToTrash",
		"when": "explorerViewletVisible && filesExplorerFocus && !inputFocus"
	}
]
```

`user_config.ahk`

```ahk
; Close focused window with Windows + Q
#q::Send !{F4}

; Run terminal with Windows + Enter
#Enter::Run, wt.exe

; Run admin terminal with Windows + Shift + Enter
#+Enter::Run, *runas wt.exe

; Switch desktop with Windows + Number
#1::switchDesktopByNumber(1)
#2::switchDesktopByNumber(2)
#3::switchDesktopByNumber(3)
#4::switchDesktopByNumber(4)
#5::switchDesktopByNumber(5)
#6::switchDesktopByNumber(6)
#7::switchDesktopByNumber(7)
#8::switchDesktopByNumber(8)
#9::switchDesktopByNumber(9)

; Move window to specific desktop with Windows + Shift + Number
#+1::MoveCurrentWindowToDesktop(1)
#+2::MoveCurrentWindowToDesktop(2)
#+3::MoveCurrentWindowToDesktop(3)
#+4::MoveCurrentWindowToDesktop(4)
#+5::MoveCurrentWindowToDesktop(5)
#+6::MoveCurrentWindowToDesktop(6)
#+7::MoveCurrentWindowToDesktop(7)
#+8::MoveCurrentWindowToDesktop(8)
#+9::MoveCurrentWindowToDesktop(9)
```
