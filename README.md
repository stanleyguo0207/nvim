目录
---

- [NeoVim配置文档](#neovim配置文档)
  - [开发环境](#开发环境)
  - [插件列表](#插件列表)
  - [键位设置](#键位设置)
  - [效果展示](#效果展示)

# NeoVim配置文档

## 开发环境

**说明**

我的开发环境是基于**Manjaro**的，开发语言主要是**c++**。

为了加速插件的安装问题，我将原始的**vim-plug**中链接用到的**github**库替换成了**gitte**的。
如果需要使用**github**，请自行替换。

配置**nvim**前，需要预装一些软件。可以参考
https://gitee.com/stanleyguo0207/configs/blob/master/linux/manjaro/manjaro.md

-   依赖软件
    -   neovim
    -   ranger
    -   python
    -   python3
    -   npm
    -   nodejs
    -   c++
        -   gcc
        -   gdb
        -   make
        -   cmake
        -   ctags
        -   clang
        -   ccls

-   安装Nvim
    ```shell
    sudo pacman -S neovim
    ```

-   安装Ranger
    ```shell
    sudo pacman -S ranger ueberzug
    pip3 install ranger-fm
    pip3 install ueberzug
    ```

-   安装pynvim
    ```shell
    pip2 install --user pynvim
    pip3 install --user pynvim
    npm install -g neovim
    ```

-   可选安装
    -   LSP
        -   CMake
            ```shell
            pip3 install cmake-language-server
            ```
        -   Bash
            ```shell
            npm i -g bash-language-server
            ```

        -   Markdown
            ```shell
            npm -g install instant-markdown-d
            ```
    -   figlet
        ```shell
        sudo pacman -S figlet
        ```

## 插件列表

**下面是用到的github的原始链接**

-   [vim-plug](https://github.com/junegunn/vim-plug)
-   [vim-airline](https://github.com/vim-airline/vim-airline)
-   [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)
-   [vim-scrollstatus](https://github.com/ojroques/vim-scrollstatus)
-   [vim-hexokinase](https://github.com/RRethy/vim-hexokinase)
-   [vim-illuminate](https://github.com/RRethy/vim-illuminate)
-   [fzf](https://github.com/junegunn/fzf)
-   [fzf.vim](https://github.com/junegunn/fzf.vim)
-   [LeaderF](https://github.com/Yggdroot/LeaderF)
-   [rnvimr](https://github.com/kevinhwang91/rnvimr)
-   [vista.vim](https://github.com/liuchengxu/vista.vim)
-   [coc.nvim](https://github.com/neoclide/coc.nvim)
-   [tmux-complete.vim](https://github.com/wellle/tmux-complete.vim)
-   [undotree](https://github.com/mbbill/undotree)
-   [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
-   [agit.vim](https://github.com/cohama/agit.vim)
-   [vim-maktaba](https://github.com/google/vim-maktaba)
-   [vim-codefmt](https://github.com/google/vim-codefmt)
-   [vim-go](https://github.com/fatih/vim-go)
-   [vim-python-pep8-indent](https://github.com/Vimjas/vim-python-pep8-indent)
-   [semshi](https://github.com/numirias/semshi)
-   [braceless.vim](https://github.com/tweekmonster/braceless.vim)
-   [vim-instant-markdown](https://github.com/instant-markdown/vim-instant-markdown)
-   [vim-table-mode](https://github.com/dhruvasagar/vim-table-mode)
-   [vim-markdown-toc](https://github.com/mzlogin/vim-markdown-toc)
-   [bullets.vim](https://github.com/dkarter/bullets.vim)
-   [auto-pairs](https://github.com/jiangmiao/auto-pairs)
-   [vim-visual-multi](https://github.com/mg979/vim-visual-multi)
-   [tcomment_vim](https://github.com/tomtom/tcomment_vim)
-   [vim-surround](https://github.com/tpope/vim-surround)
-   [wildfire.vim](https://github.com/gcmt/wildfire.vim)
-   [tabular](https://github.com/godlygeek/tabular)
-   [vim-easymotion](https://github.com/easymotion/vim-easymotion)
-   [vim-subversive](https://github.com/svermeulen/vim-subversive)
-   [indentLine](https://github.com/Yggdroot/indentLine)
-   [far.vim](https://github.com/brooth/far.vim)
-   [asynctasks.vim](https://github.com/skywind3000/asynctasks.vim)
-   [asyncrun.vim](https://github.com/skywind3000/asyncrun.vim)
-   [calendar.vim](https://github.com/itchyny/calendar.vim)
-   [rainbow](https://github.com/luochen1990/rainbow)
-   [vim-xtabline](https://github.com/mg979/vim-xtabline)
-   [vim-devicons](https://github.com/ryanoasis/vim-devicons)
-   [terminus](https://github.com/wincent/terminus)
-   [suda.vim](https://github.com/lambdalisue/suda.vim)
-   [any-jump.vim](https://github.com/pechorin/any-jump.vim)
-   [ultisnips](https://github.com/SirVer/ultisnips)

## 键位设置

**说明**

-   组合键前置键位
    -   \<C-键位\> `Ctrl`
    -   \<M-键位\> `Alt`
    -   \<A-键位\> 等同 \<M-键位\>
    -   \<S-键位\> `Shift`

-   键位映射有效范围表
    | COMMANDS                 | MODES                                    |
    | ------------------------ | ---------------------------------------- |
    | :map   :noremap  :unmap  | Normal, Visual, Select, Operator-pending |
    | :nmap  :nnoremap :nunmap | Normal                                   |
    | :vmap  :vnoremap :vunmap | Visual and Select                        |
    | :smap  :snoremap :sunmap | Select                                   |
    | :xmap  :xnoremap :xunmap | Visual                                   |
    | :omap  :onoremap :ounmap | Operator-pending                         |
    | :map!  :noremap! :unmap! | Insert and Command-line                  |
    | :imap  :inoremap :iunmap | Insert                                   |
    | :lmap  :lnoremap :lunmap | Insert, Command-line, Lang-Arg           |
    | :cmap  :cnoremap :cunmap | Command-line                             |
    | :tmap  :tnoremap :tunmap | Terminal-Job                             |

-   组合启动键重定义

    -   mapleader 
        **\<SPACE\>** 替换原始 **\\**
    -   maplocalleader
        **,**

**下面是所有键位图，依据个人使用频率经过优先级排列**

|          映射键位           | 所属映射map  |       特性       | 作用                         |                                组合键位                                |
| :-------------------------: | :----------- | :--------------: | :--------------------------- | :--------------------------------------------------------------------: |
|            **;**            | **noremap**  |                  | 进入`Command-line`模式       |                                 **:**                                  |
|            **-**            | **noremap**  |                  | 跳到上一个查找结果           |                                 **N**                                  |
|            **=**            | **noremap**  |                  | 跳到下一个查找结果           |                                 **n**                                  |
|            **`**            | **noremap**  |                  | 大小写转换                   |                                 **~**                                  |
|           **\<**            | **nnoremap** |                  | 向左移动 **\<TAB\>**         |                                **\<\<**                                |
|           **\>**            | **nnoremap** |                  | 向右移动 **\<TAB\>**         |                                **\>\>**                                |
|            **K**            | **nnoremap** |      `coc`       | 查看文档                     |         **\<silent\> :call \<SID\>show_documentation()\<CR\>**         |
|            **L**            | **noremap**  |    `undotree`    | 触发`undotree`               |                       **:UndotreeToggle\<CR\>**                        |
|            **Q**            | **noremap**  |     `buffer`     | 关闭当前`buffer` 不保存      |                              **:q\<CR\>**                              |
|            **R**            | **noremap**  |     `rnvim`      | 触发`rnvim`                  | **\<silent\> :RnvimrToggle\<CR\>\<C-\\\>\<C-n\>:RnvimrResize 0\<CR\>** |
|            **S**            | **noremap**  |     `buffer`     | 保存当前`buffer`             |                              **:w\<CR\>**                              |
|            **T**            | **nmap**     |      `coc`       | 文件浏览                     |                     **:CocCommand explorer\<CR\>**                     |
|            **Y**            | **noremap**  |      `copy`      | 从当前位置复制到行尾         |                                 **y$**                                 |
|            **Y**            | **vnoremap** |      `copy`      | 复制到系统剪切板             |                                **"+y**                                 |
|           **gd**            | **nmap**     |      `coc`       | 跳转定义                     |                      **\<Plug\>(coc-definition)**                      |
|           **gD**            | **nmap**     |      `coc`       | 跳转定义右侧打开新的`buffer` |               **:tab sp\<CR\>\<Plug\>(coc-definition)**                |
|           **gy**            | **nmap**     |      `coc`       | 跳转类型定义                 |                   **\<Plug\>(coc-type-definition)**                    |
|           **gi**            | **nmap**     |      `coc`       | 跳转实现                     |                    **\<Plug\>(coc-implementation)**                    |
|           **gr**            | **nmap**     |      `coc`       | 跳转引用                     |                      **\<Plug\>(coc-references)**                      |
|           **ts**            | **nmap**     |      `coc`       | 翻译                         |                     **\<Plug\>(coc-translator-p)**                     |
|           **rn**            | **nmap**     |      `coc`       | 重命名                       |                        **\<Plug\>(coc-rename)**                        |
|           **\\s**           | **noremap**  |                  | 全局查找替换                 |                  **:%s///g\<left\>\<left\>\<left\>**                   |
|           **\\v**           | **noremap**  |                  | 进入`Visual`模式，选中到行尾 |                           **\<silent\> v$h**                           |
|         **\<UP\>**          | **noremap**  |                  | 屏幕向上移动5个单位          |                           **:res +5\<CR\>**                            |
|        **\<DOWN\>**         | **noremap**  |                  | 屏幕向下移动5个单位          |                           **:res -5\<CR\>**                            |
|        **\<LEFT\>**         | **noremap**  |                  | 屏幕向左移动5个单位          |                      **:vertical resize-5\<CR\>**                      |
|        **\<RIGHT\>**        | **noremap**  |                  | 屏幕向右移动5个单位          |                      **:vertical resize+5\<CR\>**                      |
|         **\<C-a\>**         | **inoremap** |                  | 光标移动到行尾               |                              **\<ESC\>A**                              |
|         **\<C-c\>**         | **noremap**  |                  | 屏幕居中到当前行             |                                 **zz**                                 |
|         **\<C-f\>**         | **noremap**  |      `fzf`       | 正则表达式查找               |                        **\<silent\> :Rg\<CR\>**                        |
|         **\<C-p\>**         | **noremap**  |    `LeaderF`     | 查找文件                     |                        **:Leaderf file\<CR\>**                         |
|         **\<C-l\>**         | **imap**     |      `coc`       | 代码片段扩展                 |                   **\<Plug\>(coc-snippets-expand)**                    |
|         **\<C-e\>**         | **imap**     |      `coc`       | 代码片段扩展跳转             |                 **\<Plug\>(coc-snippets-expand-jump)**                 |
|         **\<C-e\>**         | **vmap**     |      `coc`       | 选择代码片段                 |                   **\<Plug\>(coc-snippets-select)**                    |
|         **\<C-o\>**         | **inoremap** |      `coc`       | 弹出提示窗口                 |                  **\<silent\>\<expr\> coc#refresh()**                  |
|         **\<C-t\>**         | **noremap**  |     `vista`      | 打开函数列表查找窗口         |                  **:silent! Vista finder coc\<CR\>**                   |
|       **\<LEADER\>/**       | **noremap**  |      `term`      | 下方开启一个终端             |     **:set splitbelow\<CR\>:split\<CR\>:res +10\<CR\>:term\<CR\>**     |
|       **\<LEADER\>;**       | **noremap**  |      `fzf`       | 历史记录                     |                     **\<silent\> :History\<CR\>**                      |
|       **\<LEADER\>-**       | **nmap**     |      `coc`       | 诊断错误位置向前             |                   **\<Plug\>(coc-diagnostic-prev)**                    |
|       **\<LEADER\>=**       | **nmap**     |      `coc`       | 诊断错误位置向后             |                   **\<Plug\>(coc-diagnostic-next)**                    |
|    **\<LEADER\>\<CR\>**     | **noremap**  |                  | 关闭搜索高亮显示             |                         **:nohlsearch\<CR\>**                          |
|      **\<LEADER\>aj**       | **noremap**  |    `any-jump`    | 跳转                         |                           **:AnyJump\<CR\>**                           |
|      **\<LEADER\>ab**       | **noremap**  |    `any-jump`    | 回跳                         |                         **:AnyJumpBack\<CR\>**                         |
|      **\<LEADER\>bq**       | **noremap**  |     `buffer`     | 关闭当前`buffer`             |                              **:q\<CR\>**                              |
|      **\<LEADER\>bQ**       | **noremap**  |     `buffer`     | 关闭所有`buffer`             |                             **:qa\<CR\>**                              |
|      **\<LEADER\>bs**       | **noremap**  |     `buffer`     | 保存当前`buffer`             |                              **:w\<CR\>**                              |
|      **\<LEADER\>bf**       | **noremap**  |     `buffer`     | `buffer`关闭除了第一个       |                              **\<C-w\>o**                              |
|      **\<LEADER\>cr**       | **noremap**  |      `call`      | 运行当前文件                 |                  **:call CompileRunFileType()\<CR\>**                  |
|      **\<LEADER\>cs**       | **noremap**  |      `call`      | 打印选中所属组信息           |                       **:call SynGroup()\<CR\>**                       |
|      **\<LEADER\>dw**       | **noremap**  |                  | 相邻的重复词                 |                    **/\\(\\<\\w\+\\>\\)\\_s\*\\1**                     |
|      **\<LEADER\>en**       | **noremap**  |      `edit`      | 跳转到下一个\<++\>位置并编辑 |              **\<Esc\>/\<++\>\<CR\>:nohlsearch\<CR\>c41**              |
|      **\<LEADER\>fb**       | **noremap**  |      `fzf`       | 显示打开的缓冲区             |                     **\<silent\> :Buffers\<CR\>**                      |
|      **\<LEADER\>fd**       | **noremap**  |      `fzf`       | 显示打开的缓冲区选择要关闭的 |                             **:BD\<CR\>**                              |
|      **\<LEADER\>fh**       | **noremap**  |      `fzf`       | 历史记录                     |                     **\<silent\> :History\<CR\>**                      |
|      **\<LEADER\>fr**       | **noremap**  |      `fzf`       | 查找替换                     |        **:F  \*\*/\*\<left\>\<left\>\<left\>\<left\>\<left\>**         |
|      **\<LEADER\>pp**       | **noremap**  |     `print`      | 打印当前文件路径             |                     **:echo expand('%:p')\<CR\>**                      |
|      **\<LEADER\>vl**       | **noremap**  |     `vista`      | 侧面打开函数列表             |                           **:Vista!!\<CR\>**                           |
|      **\<LEADER\>ss**       | **nmap**     |   `Subversive`   |                              |                   **\<plug\>(SubversiveSubstitute)**                   |
|      **\<LEADER\>sl**       | **nmap**     |   `Subversive`   |                              |                 **\<plug\>(SubversiveSubstituteLine)**                 |
|      **\<LEADER\>tn**       | **noremap**  |      `tabe`      | 创建一个`tabe`               |                            **:tabe\<CR\>**                             |
|      **\<LEADER\>tj**       | **noremap**  |      `tabe`      | 切换下一个`tabe`             |                          **:-tabenext\<CR\>**                          |
|      **\<LEADER\>tk**       | **noremap**  |      `tabe`      | 切换上一个`tabe`             |                          **:+tabenext\<CR\>**                          |
|      **\<LEADER\>tmj**      | **noremap**  |      `tabe`      | `tabe`移动到上一个位置       |                          **:-tabemove\<CR\>**                          |
|      **\<LEADER\>tmk**      | **noremap**  |      `tabe`      | `tabe`移动到下一个位置       |                          **:+tabemove\<CR\>**                          |
|      **\<LEADER\>tc**       | **nmap**     |  `tcomment_vim`  | 注释                         |                                **g>c**                                 |
|      **\<LEADER\>tu**       | **nmap**     |  `tcomment_vim`  | 反注释                       |                                **g<c**                                 |
|      **\<LEADER\>tc**       | **vmap**     |  `tcomment_vim`  | 注释                         |                                **g>c**                                 |
|      **\<LEADER\>tu**       | **vmap**     |  `tcomment_vim`  | 反注释                       |                                **g<c**                                 |
|      **\<LEADER\>ti**       | **nnoremap** |  `tcomment_vim`  |                              |                                 **cl**                                 |
|      **\<LEADER\>tt**       | **nnoremap** |                  | 空格替换为`Tab`              |                           **:%s/    /\\t/g**                           |
|      **\<LEADER\>tt**       | **vnoremap** |                  | 空格替换为`Tab`              |                           **:s/    /\\t/g**                            |
|      **\<LEADER\>tb**       | **vmap**     |    `tabular`     | 按照指定字符重新排列代码     |                           **:Tabularize /**                            |
|      **\<LEADER\>ww**       | **noremap**  |     `window`     | 窗口跳转 下                  |                              **\<C-w\>w**                              |
|      **\<LEADER\>wk**       | **noremap**  |     `window`     | 窗口跳转 上                  |                              **\<C-w\>k**                              |
|      **\<LEADER\>wj**       | **noremap**  |     `window`     | 窗口跳转 下                  |                              **\<C-w\>j**                              |
|      **\<LEADER\>wh**       | **noremap**  |     `window`     | 窗口跳转 左                  |                              **\<C-w\>h**                              |
|      **\<LEADER\>wl**       | **noremap**  |     `window`     | 窗口跳转 右                  |                              **\<C-w\>l**                              |
|      **\<LEADER\>wsk**      | **noremap**  |     `window`     | 分离窗口并跳转 上            |      **:set nosplitbelow\<CR\>:split\<CR\>:set splitbelow\<CR\>**      |
|      **\<LEADER\>wsj**      | **noremap**  |     `window`     | 分离窗口并跳转 下            |                 **:set splitbelow\<CR\>:split\<CR\>**                  |
|      **\<LEADER\>wsh**      | **noremap**  |     `window`     | 分离窗口并跳转 左            |     **:set nosplitright\<CR\>:vsplit\<CR\>:set splitright\<CR\>**      |
|      **\<LEADER\>wsl**      | **noremap**  |     `window`     | 分离窗口并跳转 右            |                 **:set splitright\<CR\>:vsplit\<CR\>**                 |
|      **\<LEADER\>wth**      | **noremap**  |     `window`     | 两个窗口重新垂直布局         |                          **\<C-w\>t\<C-w\>K**                          |
|      **\<LEADER\>wtv**      | **noremap**  |     `window`     | 两个窗口重新水平布局         |                          **\<C-w\>t\<C-w\>H**                          |
|      **\<LEADER\>wrh**      | **noremap**  |     `window`     | 两个窗口布局垂直旋转         |                          **\<C-w\>b\<C-w\>K**                          |
|      **\<LEADER\>wrv**      | **noremap**  |     `window`     | 两个窗口布局水平旋转         |                          **\<C-w\>b\<C-w\>H**                          |
|      **\<LEADER\>xrs**      | **nmap**     |      `coc`       | 范围选取                     |                     **\<Plug\>(coc-range-select)**                     |
|      **\<LEADER\>xcs**      | **nmap**     |      `coc`       | 代码操作选中部分             |                 **\<Plug\>(coc-codeaction-selected)**                  |
|      **\<LEADER\>xcs**      | **xmap**     |      `coc`       | 代码操作选中部分             |                 **\<Plug\>(coc-codeaction-selected)**                  |
|      **\<LEADER\>xcd**      | **nmap**     |      `coc`       | 代码操作提示                 |                      **\<Plug\>(coc-codeaction)**                      |
|      **\<LEADER\>xqf**      | **nmap**     |      `coc`       | 修复当前                     |                     **\<Plug\>(coc-fix-current)**                      |
|      **\<LEADER\>xd**       | **nnoremap** |      `coc`       | 诊断错误列表                 |       **\<silent\>\<nowait\> :\<C-u\>CocList diagnostics\<CR\>**       |
|      **\<LEADER\>xif**      | **xmap**     |      `coc`       | 选取函数                     |                      **\<Plug\>(coc-funcobj-i)**                       |
|      **\<LEADER\>xaf**      | **xmap**     |      `coc`       | 选取函数                     |                      **\<Plug\>(coc-funcobj-a)**                       |
|      **\<LEADER\>xic**      | **xmap**     |      `coc`       | 选取类                       |                      **\<Plug\>(coc-classobj-i)**                      |
|      **\<LEADER\>xac**      | **xmap**     |      `coc`       | 选取类                       |                      **\<Plug\>(coc-classobj-a)**                      |
|      **\<LEADER\>xrs**      | **xmap**     |      `coc`       | 范围选取                     |                     **\<Plug\>(coc-range-select)**                     |
|      **\<LEADER\>xif**      | **omap**     |      `coc`       | 选取函数                     |                      **\<Plug\>(coc-funcobj-i)**                       |
|      **\<LEADER\>xaf**      | **omap**     |      `coc`       | 选取函数                     |                      **\<Plug\>(coc-funcobj-a)**                       |
|      **\<LEADER\>xic**      | **omap**     |      `coc`       | 选取类                       |                      **\<Plug\>(coc-classobj-i)**                      |
|      **\<LEADER\>xac**      | **omap**     |      `coc`       | 选取类                       |                      **\<Plug\>(coc-classobj-a)**                      |
|      **\<LEADER\>za**       | **noremap**  |                  | 折叠/打开当前代码块          |                           **\<silent\> za**                            |
|      **\<LEADER\>zr**       | **noremap**  |                  | 打开所有代码块               |                           **\<silent\> zR**                            |
|      **\<LEADER\>zm**       | **noremap**  |                  | 折叠所有代码块               |                           **\<silent\> zM**                            |
| **\<LEADER\>\<LEADER\>sp**  | **noremap**  |                  | 开启/关闭拼写检查            |                         **:set spell!\<CR\>**                          |
| **\<LEADER\>\<LEADER\>sr**  | **noremap**  |                  | 重新加载 **init.vim** 文件   |               **:source ~/.config/nvim/init.vim\<CR\>**                |
|  **\<LEADER\>\<LEADER\>t**  | **noremap**  | `vim-table-mode` | 触发表格                     |                       **:TableModeToggle\<CR\>**                       |
|  **\<LEADER\>\<LEADER\>c**  | **noremap**  |    `calendar`    | 显示当前时钟                 |             **:Calendar -view=clock -position=here\<CR\>**             |
|  **\<LEADER\><LEADER\>g**   | **nnoremap** |      `agit`      | 打开git仓库                  |                            **:Agit\<CR\>**                             |
| **\<LEADER\>\<LEADER\>er**  | **noremap**  |      `edit`      | 编译 **init.vim** 文件       |                  **:e ~/.config/nvim/init.vim\<CR\>**                  |
| **\<LEADER\>\<LEADER\>ev**  | **noremap**  |      `edit`      | 创建一个 **.nvimrc** 文件    |                          **:e .nvimrc\<CR\>**                          |
| **\<LEADER\>\\<LEADER\>pf** | **noremap**  |     `print`      | 将输入转为字符画输出         |                             **:r !figlet**                             |

**特殊buffer自定义映射**

|   映射键位    | 所属映射map  |    特性    | 作用         |              组合键位              |
| :-----------: | :----------- | :--------: | :----------- | :--------------------------------: |
|     **u**     | **nmap**     | `undotree` | 切换到下一个 |   **\<Plug\>UndotreeNextState**    |
|     **e**     | **nmap**     | `undotree` | 切换到上一个 | **\<Plug\>UndotreePreviousState**  |
|     **U**     | **nmap**     | `undotree` | 切换到下五个 |   **5\<Plug\>UndotreeNextState**   |
|     **E**     | **nmap**     | `undotree` | 切换到上五个 | **5\<Plug\>UndotreePreviousState** |
|  **\<TAB\>**  | **inoremap** |   `coc`    | 提示窗口向下 |     **\<silent\>\<expr\>** ...     |
| **\<S-TAB\>** | **inoremap** |   `coc`    | 提示窗口向上 |                ...                 |
|  **\<CR\>**   | **inoremap** |   `coc`    | 确定补全方案 |     **\<silent\>\<expr\>**...      |
|  **\<C-N\>**  | **tnoremap** |            |              |                                    |
|  **\<C-O\>**  | **tnoremap** |            |              |                                    |

## 效果展示
