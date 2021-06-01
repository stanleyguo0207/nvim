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

**全局有效**
|   映射键位    | 效果说明                                   | 原始键位 |
| :-----------: | :----------------------------------------- | :------: |
| **" "**(空格) | 组合键开始键 组合键中等价于 **\<LEADER\>** |  **\\**  |

**noremap**
|       映射键位       | 效果说明                                 |                                原始键位                                |
| :------------------: | :--------------------------------------- | :--------------------------------------------------------------------: |
|        **;**         | 进入命令模式                             |                                 **:**                                  |
|        **Q**         | 关闭当前buffer 不保存                    |                              **:q\<CR\>**                              |
|        **S**         | 保存当前buffer                           |                              **:w\<CR\>**                              |
|        **Y**         | 复制从当前位置到行尾内容                 |                                 **y$**                                 |
|        **-**         | 跳到上一个查找结果                       |                                 **N**                                  |
|        **=**         | 跳到下一个查找结果                       |                                 **n**                                  |
|        **`**         | 大小写转换                               |                                 **~**                                  |
|        **r**         | 运行当前文件                             |                    **:call CompileRunGcc()\<CR\>**                     |
|        **R**         | **\<silent\>** `rnvim` 打开`Ranger`      |      **:RnvimrToggle\<CR\>\<C-\\\>\<C-n\>:RnvimrResize 0\<CR\>**       |
|      **\<UP\>**      | 屏幕向上移动5个单位                      |                           **:res +5\<CR\>**                            |
|     **\<DOWN\>**     | 屏幕向下移动5个单位                      |                           **:res -5\<CR\>**                            |
|     **\<LEFT\>**     | 屏幕向左移动5个单位                      |                      **:vertical resize-5\<CR\>**                      |
|    **\<RIGHT\>**     | 屏幕向右移动5个单位                      |                      **:vertical resize+5\<CR\>**                      |
|     **\<F10\>**      |                                          |                       **:call SynGroup()\<CR\>**                       |
|        **tu**        | 创建一个buffer                           |                            **:tabe\<CR\>**                             |
|        **tn**        | 切换左buffer                             |                          **:-tabenext\<CR\>**                          |
|        **ti**        | 切换右buffer                             |                          **:+tabenext\<CR\>**                          |
|       **tmn**        | buffer移动到左                           |                          **:-tabemove\<CR\>**                          |
|       **tmi**        | buffer移动到右                           |                          **:+tabemove\<CR\>**                          |
|        **tx**        | 将输入转为字符画输出                     |                             **:r !figlet**                             |
|       **\\v**        | **\<silent\>** **visual** 模式选中到行尾 |                                **v$h**                                 |
|       **\\t**        | 打开一个新的`cwd`实例                    | **:tabe\<CR\>:-tabmove\<CR\>:term sh -c 'st'\<CR\><C-\><C-N>:q\<CR\>** |
|       **\\s**        | 全局查找替换                             |                  **:%s///g\<left\>\<left\>\<left\>**                   |
|     **\<C-p\>**      | `LeaderF` 查找文件                       |                        **:Leaderf file\<CR\>**                         |
|     **\<C-q\>**      | 关闭所有buffer                           |                                 **:**                                  |
|     **\<C-c\>**      | 屏幕居中到当前行                         |                                 **zz**                                 |
|     **\<C-t\>**      | `vista` 打开函数列表查找窗口             |                  **:silent! Vista finder coc\<CR\>**                   |
|     **\<C-w\>**      | **\<silent\>** `fzf` 显示打开的缓冲区    |                           **:Buffers\<CR\>**                           |
|     **\<C-d\>**      | `fzf` 显示打开的缓冲区选择要关闭的       |                             **:DB\<CR\>**                              |
|     **\<C-f\>**      | **\<silent\>** `fzf` 正则表达式查找      |                             **:Rg\<CR\>**                              |
|     **\<C-h\>**      | **\<silent\>** `fzf` 历史记录            |                           **:History\<CR\>**                           |
|   **\<LEADER\>;**    | `fzf` 历史记录                           |                           **:History\<CR\>**                           |
|   **\<LEADER\>/**    | 下方开启一个终端                         |     **:set splitbelow\<CR\>:split\<CR\>:res +10\<CR\>:term\<CR\>**     |
|   **\<LEADER\>qf**   | buffer窗口除了第一个其余关闭             |                              **\<C-w\>o**                              |
|   **\<LEADER\>rc**   | 编译 **init.vim** 文件                   |                  **:e ~/.config/nvim/init.vim\<CR\>**                  |
|   **\<LEADER\>rv**   | 当前目录下创建一个 **.nvimrc** 文件      |                          **:e .nvimrc\<CR\>**                          |
| **\<LEADER\>\<CR\>** | 关闭搜索高亮显示                         |                         **:nohlsearch\<CR\>**                          |
|   **\<LEADER\>dw**   | 相邻的重复词                             |                    **/\\(\\<\\w\+\\>\\)\\_s\*\\1**                     |
|   **\<LEADER\>o**    | **\<silent\>** 折叠/打开当前代码块       |                                 **za**                                 |
|   **\<LEADER\>w**    | 窗口跳转 下                              |                              **\<C-w\>w**                              |
|   **\<LEADER\>u**    | 窗口跳转 上                              |                              **\<C-w\>k**                              |
|   **\<LEADER\>e**    | 窗口跳转 下                              |                              **\<C-w\>j**                              |
|   **\<LEADER\>n**    | 窗口跳转 左                              |                              **\<C-w\>h**                              |
|   **\<LEADER\>i**    | 窗口跳转 右                              |                              **\<C-w\>l**                              |
|   **\<LEADER\>su**   | 创建窗口并跳转 上                        |      **:set nosplitbelow\<CR\>:split\<CR\>:set splitbelow\<CR\>**      |
|   **\<LEADER\>se**   | 创建窗口并跳转 下                        |                 **:set splitbelow\<CR\>:split\<CR\>**                  |
|   **\<LEADER\>sn**   | 创建窗口并跳转 左                        |     **:set nosplitright\<CR\>:vsplit\<CR\>:set splitright\<CR\>**      |
|   **\<LEADER\>si**   | 创建窗口并跳转 右                        |                 **:set splitright\<CR\>:vsplit\<CR\>**                 |
|   **\<LEADER\>sh**   | 两个窗口重新垂直布局                     |                          **\<C-w\>t\<C-w\>K**                          |
|   **\<LEADER\>sv**   | 两个窗口重新水平布局                     |                          **\<C-w\>t\<C-w\>H**                          |
|  **\<LEADER\>srh**   | 两个窗口布局垂直旋转                     |                          **\<C-w\>b\<C-w\>K**                          |
|  **\<LEADER\>srv**   | 两个窗口布局水平旋转                     |                          **\<C-w\>b\<C-w\>H**                          |
|   **\<LEADER\>x**    | 跳转到下一个\<++\>位置并编辑             |              **\<Esc\>/\<++\>\<CR\>:nohlsearch\<CR\>c41**              |
|   **\<LEADER\>sc**   | 开启/关闭拼写检查                        |                         **:set spell!\<CR\>**                          |
|   **\<LEADER\>j**    | `any-jump` 跳转                          |                           **:AnyJump\<CR\>**                           |
|   **\<LEADER\>b**    | `any-jump` 回跳                          |                         **:AnyJumpBack\<CR\>**                         |
|   **\<LEADER\>v**    | `vista` 侧面打开函数列表                 |                           **:Vista!!\<CR\>**                           |

**nmap**
|     映射键位     | 效果说明                         |                 原始键位                  |
| :--------------: | :------------------------------- | :---------------------------------------: |
|      **gd**      | `coc` 跳转定义                   |       **\<Plug\>(coc-definition)**        |
|      **gD**      | `coc` 跳转定义右侧打开新的buffer | **:tab sp\<CR\>\<Plug\>(coc-definition)** |
|      **gy**      | `coc` 跳转类型定义               |     **\<Plug\>(coc-type-definition)**     |
|      **gi**      | `coc` 跳转实现                   |     **\<Plug\>(coc-implementation)**      |
|      **gr**      | `coc` 跳转引用                   |       **\<Plug\>(coc-references)**        |
|      **tt**      | `coc` 文件浏览                   |      **:CocCommand explorer\<CR\>**       |
|      **ts**      | `coc` 翻译                       |      **\<Plug\>(coc-translator-p)**       |
|   **\<C-s\>**    | `coc`                            |      **\<Plug\>(coc-range-select)**       |
| **\<LEADER\>-**  | `coc` 诊断错误位置向前           |     **\<Plug\>(coc-diagnostic-prev)**     |
| **\<LEADER\>=**  | `coc` 诊断错误位置向后           |     **\<Plug\>(coc-diagnostic-next)**     |
| **\<LEADER\>rn** | `coc` 重命名                     |         **\<Plug\>(coc-rename)**          |
| **\<LEADER\>a**  | `coc` 代码操作选中部分           |   **\<Plug\>(coc-codeaction-selected)**   |
| **\<LEADER\>ac** | `coc` 代码操作提示               |       **\<Plug\>(coc-codeaction)**        |
| **\<LEADER\>qf** | `coc` 修复当前                   |       **\<Plug\>(coc-fix-current)**       |

**xmap**
|    映射键位     | 效果说明               |               原始键位                |
| :-------------: | :--------------------- | :-----------------------------------: |
|     **if**      | `coc`                  |      **\<Plug\>(coc-funcobj-i)**      |
|     **af**      | `coc`                  |      **\<Plug\>(coc-funcobj-a)**      |
|     **ic**      | `coc`                  |     **\<Plug\>(coc-classobj-i)**      |
|     **ac**      | `coc`                  |     **\<Plug\>(coc-classobj-a)**      |
|   **\<C-s\>**   | `coc`                  |    **\<Plug\>(coc-range-select)**     |
| **\<LEADER\>a** | `coc` 代码操作选中部分 | **\<Plug\>(coc-codeaction-selected)** |

**omap**
| 映射键位 | 效果说明 |           原始键位           |
| :------: | :------- | :--------------------------: |
|  **if**  | `coc`    | **\<Plug\>(coc-funcobj-i)**  |
|  **af**  | `coc`    | **\<Plug\>(coc-funcobj-a)**  |
|  **ic**  | `coc`    | **\<Plug\>(coc-classobj-i)** |
|  **ac**  | `coc`    | **\<Plug\>(coc-classobj-a)** |

**imap**
|  映射键位   | 效果说明               |                原始键位                |
| :---------: | :--------------------- | :------------------------------------: |
| **\<C-l\>** | `coc` 插入代码片段     |   **\<Plug\>(coc-snippets-expand)**    |
| **\<C-e\>** | `coc` 插入代码片段跳转 | **\<Plug\>(coc-snippets-expand-jump)** |

**vmap**
|  映射键位   | 效果说明           |             原始键位              |
| :---------: | :----------------- | :-------------------------------: |
| **\<C-e\>** | `coc` 选择代码片段 | **\<Plug\>(coc-snippets-select)** |

**nnoremap**
|     映射键位     | 效果说明                                    |                  原始键位                   |
| :--------------: | :------------------------------------------ | :-----------------------------------------: |
|      **<**       | 向左移动 **\<TAB\>**                        |                   **<<**                    |
|      **>**       | 向右移动 **\<TAB\>**                        |                   **>>**                    |
|      **K**       | **\<silent\>** `coc` 查看文档               | **:call \<SID\>show_documentation()\<CR\>** |
| **\<LEADER\>tt** | 空格替换为`Tab`                             |             **:%s/    /\\t/g**              |
| **\<LEADER\>d**  | **\<silent\>\<nowait\>** `coc` 诊断错误列表 |    **:\<C-u\>CocList diagnostics\<CR\>**    |

**inoremap**
|   映射键位    | 效果说明                                  |     原始键位      |
| :-----------: | :---------------------------------------- | :---------------: |
|  **\<C-a\>**  | 光标移动到行尾                            |   **\<ESC\>A**    |
|  **\<C-o\>**  | **\<silent\>\<expr\>** `coc` 弹出提示窗口 | **coc#refresh()** |
|  **\<TAB\>**  | **\<silent\>\<expr\>** `coc` 提示窗口向下 |        ...        |
| **\<S-TAB\>** | `coc` 提示窗口向上                        |        ...        |
|  **\<CR\>**   | **\<silent\>\<expr\>** `coc` 确定补全方案 |        ...        |

**vnoremap**
|     映射键位     | 效果说明         |     原始键位      |
| :--------------: | :--------------- | :---------------: |
|      **Y**       | 复制到系统剪切板 |      **"+y**      |
| **\<LEADER\>tt** | 空格替换为`Tab`  | **:s/    /\\t/g** |

**tnoremap**
|  映射键位   | 效果说明 | 原始键位 |
| :---------: | :------- | :------: |
| **\<C-N\>** |          |          |
| **\<C-O\>** |          |          |


## 效果展示
