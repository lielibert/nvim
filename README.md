# **Introduction**

This is a **ready to go** nvim lua  configuration using **Lazy Plugin Manager** that you can clone in your **.config/** folder to use.</br>
Best for C/CPP & rust & python.</br>
This is some-what lightweight ... also 😅.

> [!IMPORTANT]

> Dependencies

> git 

> rust nightly


## ✨ Configure and Setup

* For Linux

```
cd ~/.config && git clone https://github.com/lielibert/nvim.git

```
* For Windows

```
cd %LOCALAPPDATA% && git clone https://github.com/lielibert/nvim.git

```

## 📁 Folder Structure

```
├── LICENSE
├── README.md
├── init.lua
├── lazy-lock.json
├── lua
│   ├── config
│   └── plugins
└── snippets
```

## 🔥Plugins

| Feature | Plugins |
|---------|---------|
| **Theme** | base-16-color + transparent support |
| **lsp** | installed vai mason handled by ensure.nvim |
| **Complition** | blink.cmp |
| **Diagnostics** | diagflow |
| **Debugging** | nvim-dap + U.I. |

+ Also contain features like **multicursor, mini.nvim, rainbow brackets indent**
+ Also contain Plugin for AI (copilot), can be enable in init.lua file
+ Use browser for AI chat, nothing is perfect.

> [!NOTE]

> Install clipboard and clipboard manager

> use ocs52 in nvim to copy text from remote machine to local machine

> This works in all platform
