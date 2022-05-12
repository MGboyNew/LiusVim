### START
1. 克隆仓库
2. 安装[packer](https://github.com/wbthomason/packer.nvim)
    注意:telescope 手动安装依赖 fd 和 ripgrep

    sudo apt install pylint
    sudo yay  -Ss python3-autopep8
    npm install -g lua-fmt
    npm install -g prettier

### 目录结构说明

/home/lius/.config/nvim

├── init.lua
├── ftplugin/
├── lint/
├── lua/
│   ├── basic/
│   │   ├── config.lua
│   │   ├── keybinds.lua
│   │   ├── plugins.lua
│   │   └── settings.lua
│   ├── conf/
│   ├── dap/
│   └── lsp/
└── snippet/

目录说明：
    ftplugin：存放不同文件类型的缩进规则文件
    lint：存放各种语言的代码检查规范配置文件，如 pylint 等
    basic：存放基本配置项文件
    conf：存放插件相关配置文件
    dap：存放 DAP 相关配置文件
    lsp：存放 LSP 相关配置文件
    snippet：存放代码片段相关文件

文件说明：
    init.lua：配置入口文件
    config.lua：存放用户自定义配置的文件
    keybinds.lua：存放键位绑定的文件
    plugins.lua：存放依赖插件的文件
    settings.lua：存放 neovim 基本配置项的文件
