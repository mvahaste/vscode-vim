# VS Code & Vim extension settings

Settings that make VS Code faster and feel more like Vim.

## Dependencies
[Vim](aka.ms/vscodevim) extension for VS Code.

## Settings

`keybindings.json`

```json5
[
	// Ctrl+P opens quick open
	{
		"key": "ctrl+p",
		"command": "workbench.action.quickOpen"
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
	}
]
```

`settings.json`

```json5
{
    "vim.useSystemClipboard": true,
	"vim.normalModeKeyBindings": [
		// Semicolon opens vim command line
		{
			"before": [";"],
			"commands": ["vim.showQuickpickCmdLine"]
		},
		// Space+/ to comment/uncomment line
		{
			"before": ["<space>", "/"],
			"commands": ["editor.action.commentLine"]
		},
		// Tab cycles editors
		{
			"before": ["<tab>"],
			"commands": ["workbench.action.nextEditor"]
		},
		{
			"before": ["<shift+tab>"],
			"commands": ["workbench.action.previousEditor"]
		}
	],
}
```
