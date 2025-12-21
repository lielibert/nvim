# **Introduction**

This is a **ready to go** nvim lua  configuration using **Lazy Plugin Manager** that you can clone in your **.config/** folder to use.</br>
Best for C/CPP & rust & python.</br>
This is some-what lightweight ... also 😅.

## ✨ Install and setup

```
cd ~/.config && git clone https://github.com/lielibert/nvim.git
```

## 📁 Folder Structure

```
.
├── LICENSE
├── README.md
├── init.lua
├── lazy-lock.json
└── lua
    ├── keymaps
    └── plugins
```

## 🔥Plugins


| Feature | Plugins |
|---------|---------|
| **Theme**   | base-16-color + matugen support |
|  **lsp**  | blink.cmp, installed vai mason |
| **Diagnostics** | conform + nvim-lint, installed vai mason |
| **Debugging** | nvim-dap + U.I. |

+ Also contain features like **multicursor, comment, tabout, rainbow brackets indent**
+ Also contain Plugin for AI , can enable it in init.lua file
+ Use browser for AI chat , nothing is perfect.

> [!NOTE]
> Install a clipboard like xclip for x11 or wl-clipboard for wayland and a clipboard manager
> Can also use kitty terminal or something like that which allow ssh copying
> This works best in all platfor 

