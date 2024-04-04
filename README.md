# VS Code & Vim extension settings

Settings that make VS Code faster and feel more like Vim.

## Dependencies

These settings rely on the following extensions:

- [Vim for VS Code](aka.ms/vscodevim)
- [Toggle Boolean](https://marketplace.visualstudio.com/items?itemName=silesky.toggle-boolean)

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

## Settings

`settings.json`

```json5
{
	"explorer.confirmDelete": false,
	"explorer.confirmDragAndDrop": false,
	"editor.lightbulb.enabled": "off",
	"editor.stickyScroll.enabled": true,
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
		// Tab cycles editors
		{
			"before": ["<tab>"],
			"commands": ["workbench.action.nextEditor"]
		},
		{
			"before": ["<shift+tab>"],
			"commands": ["workbench.action.previousEditor"]
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
}
```

`keybindings.json`

```json5
[
	// Ctrl+W close editor
	{
		"key": "ctrl+w",
		"command": "workbench.action.closeActiveEditor"
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
	// Ctrl+H focus left editor
	{
		"key": "ctrl+h",
		"command": "workbench.action.focusLeftGroup"
	},
	// Ctrl+L focus right editor
	{
		"key": "ctrl+l",
		"command": "workbench.action.focusRightGroup"
	},
	// Ctrl+J focus below editor
	{
		"key": "ctrl+j",
		"command": "workbench.action.focusBelowGroup"
	},
	// Ctrl+K focus above editor
	{
		"key": "ctrl+k",
		"command": "workbench.action.focusAboveGroup"
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
