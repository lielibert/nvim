# Introduction

This is a **ready to go** nvim lua  configuration using **Lazy Plugin Manager** that you can clone in your **.config/** folder to use. Best for C/CPP & rust & python.</br>
This is some-what lightweight ... also 😅.

## Install and setup
</br>
```
cd ~/.config && git clone https://github.com/lielibert/nvim.git
```

---

### It contain plugins like

> - For Quality of Life -> snacks</br>
> - For Theme -> tokyonight</br>
> - For Error Detection -> mason , lspconfig , nvim-lint and more</br>
> - For Debuging -> nvim-dap + UI</br>
> - For Completion -> blink</br>
> - Also contain features multi cursor & comment & tabout & rainbow brackets indent</br>
> - Also contain Plugin for AI , can enable it in init.lua file</br>
> - Use browser for AI chat , nothing is perfect</br>

</br>

> ## Project Structure

<p>
.</br>
├── LICENSE</br>
├── README.md</br>
├── init.lua</br>
├── lazy-lock.json</br>
└── lua</br>
    ├── keymaps -> can put custom keybindings</br>
    └── plugins -> contain plugins ( you can identify them with their names ) and their setups & keybindings
</p>

#### May be usefull...

-- Install a clipboard like xclip for x11 or wl-clipboard for wayland </br>
-- Can also kitty terminal or something that allow ssh copying
</br>
-- This works best in arch-linux
</br>
-- I will try to make its a guide for keybindings for now you can use which-key plugins.

