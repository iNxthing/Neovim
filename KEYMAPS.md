# ⌨️ Mapa Completo de Atajos de Neovim

> Referencia exhaustiva de todos los atajos de teclado registrados en esta configuración de Neovim (LazyVim).
>
> - **Tecla Líder (`<leader>`):** `<Space>` (Barra espaciadora)
> - **Total de atajos documentados:** 302 combinaciones agrupadas.
> - **Guía esencial recomendada:** Ver [CHEATSHEET.md](CHEATSHEET.md) para el workflow diario.

---

## 📑 Índice de Secciones

- [🔍 Búsqueda Global & Fuzzy Finder (Snacks / Telescope)](#busqueda) (51)
- [📁 Exploradores de Archivos (Neo-tree & Yazi)](#exploradores) (10)
- [🧠 LSP, Código & Refactoring](#lsp) (16)
- [🩺 Diagnósticos, Errores & Trouble](#diagnosticos) (25)
- [🐙 Git & Control de Versiones](#git) (16)
- [📑 Buffers & Pestañas (Bufferline)](#buffers) (20)
- [🪟 Ventanas & Splits](#ventanas) (12)
- [⚡ Flash & Saltos Rápidos](#flash) (4)
- [🌳 TreeSJ (Split / Join sintáctico)](#treesj) (2)
- [⇥ Tabout (Escape de delimitadores)](#tabout) (4)
- [💬 Comentarios](#comentarios) (3)
- [🔗 MiniPairs (Auto-cierre de comillas/paréntesis)](#minipairs) (11)
- [⚙️ UI, Toggles & Opciones](#ui) (27)
- [💻 Terminal Integrada](#terminal) (2)
- [🚪 Sesiones & Salida](#sesiones) (4)
- [🧭 Navegación con Corchetes ([ y ])](#corchetes) (28)
- [🚀 Navegación & Edición General](#general) (49)
- [✍️ Atajos de Modo Insert](#insert) (6)
- [✂️ Atajos de Modo Visual / Selección](#visual) (11)
- [⌨️ Línea de Comandos](#cmdline) (1)

---

<a id="busqueda"></a>
## 🔍 Búsqueda Global & Fuzzy Finder (Snacks / Telescope)

| Atajo | Modo | Descripción | Acción / Comando |
| :--- | :--- | :--- | :--- |
| `<leader>,` | Normal | Buffers | — |
| `<leader>/` | Normal | Grep (Root Dir) | — |
| `<leader>:` | Normal | Command History | — |
| `<leader>?` | Normal | Buffer Keymaps (which-key) | — |
| `<leader>fB` | Normal | Buffers (all) | — |
| `<leader>fF` | Normal | Find Files (cwd) | — |
| `<leader>fR` | Normal | Recent (cwd) | — |
| `<leader>fT` | Normal | Terminal (cwd) | — |
| `<leader>fb` | Normal | Buffers | — |
| `<leader>fc` | Normal | Find Config File | — |
| `<leader>ff` | Normal | Find Files (Root Dir) | — |
| `<leader>fg` | Normal | Find Files (git-files) | — |
| `<leader>fn` | Normal | New File | `<Cmd>enew<CR>` |
| `<leader>fp` | Normal | Projects | — |
| `<leader>fr` | Normal | Recent | — |
| `<leader>ft` | Normal | Terminal (Root Dir) | — |
| `<leader>s` | Normal | Acción interna de Neovim / Plugin | — |
| `<leader>s"` | Normal | Registers | — |
| `<leader>s/` | Normal | Search History | — |
| `<leader>sB` | Normal | Grep Open Buffers | — |
| `<leader>sC` | Normal | Commands | — |
| `<leader>sD` | Normal | Buffer Diagnostics | — |
| `<leader>sG` | Normal | Grep (cwd) | — |
| `<leader>sH` | Normal | Highlights | — |
| `<leader>sM` | Normal | Man Pages | — |
| `<leader>sR` | Normal | Resume | — |
| `<leader>sT` | Normal | Todo/Fix/Fixme | — |
| `<leader>sW` | Normal · Visual | Visual selection or word (cwd) | — |
| `<leader>sa` | Normal | Autocmds | — |
| `<leader>sb` | Normal | Buffer Lines | — |
| `<leader>sc` | Normal | Command History | — |
| `<leader>sd` | Normal | Diagnostics | — |
| `<leader>sg` | Normal | Grep (Root Dir) | — |
| `<leader>sh` | Normal | Help Pages | — |
| `<leader>si` | Normal | Icons | — |
| `<leader>sj` | Normal | Jumps | — |
| `<leader>sk` | Normal | Keymaps | — |
| `<leader>sl` | Normal | Location List | — |
| `<leader>sm` | Normal | Marks | — |
| `<leader>sn` | Normal | +noice | — |
| `<leader>sna` | Normal | Noice All | — |
| `<leader>snd` | Normal | Dismiss All | — |
| `<leader>snh` | Normal | Noice History | — |
| `<leader>snl` | Normal | Noice Last Message | — |
| `<leader>snt` | Normal | Noice Picker (Telescope/FzfLua) | — |
| `<leader>sp` | Normal | Search for Plugin Spec | — |
| `<leader>sq` | Normal | Quickfix List | — |
| `<leader>sr` | Normal · Visual | Search and Replace | — |
| `<leader>st` | Normal | Todo | — |
| `<leader>su` | Normal | Undotree | — |
| `<leader>sw` | Normal · Visual | Visual selection or word (Root Dir) | — |

<a id="exploradores"></a>
## 📁 Exploradores de Archivos (Neo-tree & Yazi)

| Atajo | Modo | Descripción | Acción / Comando |
| :--- | :--- | :--- | :--- |
| `<leader>-` | Normal · Visual | Open yazi at the current file | `<Cmd>Yazi<CR>` |
| `<leader>E` | Normal | Explorer NeoTree (cwd) | — |
| `<leader>be` | Normal | Buffer Explorer | — |
| `<leader>cw` | Normal | Open the file manager in nvim's working directory | `<Cmd>Yazi cwd<CR>` |
| `<leader>e` | Normal | Explorer NeoTree (Root Dir) | — |
| `<leader>fE` | Normal | Explorer NeoTree (cwd) | — |
| `<leader>fe` | Normal | Explorer NeoTree (Root Dir) | — |
| `<leader>ge` | Normal | Git Explorer | — |
| `<C-Up>` | Normal | Resume the last yazi session | `<Cmd>Yazi toggle<CR>` |
| `gx` | Normal · Visual | Opens filepath or URI under cursor with the system handler (file explorer, web browser, …) | — |

<a id="lsp"></a>
## 🧠 LSP, Código & Refactoring

| Atajo | Modo | Descripción | Acción / Comando |
| :--- | :--- | :--- | :--- |
| `<leader>cF` | Normal · Visual | Format Injected Langs | — |
| `<leader>cS` | Normal | LSP references/definitions/... (Trouble) | `<Cmd>Trouble lsp toggle<CR>` |
| `<leader>cd` | Normal | Line Diagnostics | — |
| `<leader>cf` | Normal · Visual | Format | — |
| `<leader>cm` | Normal | Mason | — |
| `<leader>cp` | Normal | Discord Presence | — |
| `<leader>cs` | Normal | Symbols (Trouble) | `<Cmd>Trouble symbols toggle<CR>` |
| `<leader>uF` | Normal | Toggle Auto Format (Buffer) | — |
| `<leader>uf` | Normal | Toggle Auto Format (Global) | — |
| `gO` | Normal | vim.lsp.buf.document_symbol() | — |
| `gra` | Normal · Visual | vim.lsp.buf.code_action() | — |
| `gri` | Normal | vim.lsp.buf.implementation() | — |
| `grn` | Normal | vim.lsp.buf.rename() | — |
| `grr` | Normal | vim.lsp.buf.references() | — |
| `grt` | Normal | vim.lsp.buf.type_definition() | — |
| `grx` | Normal | vim.lsp.codelens.run() | — |

<a id="diagnosticos"></a>
## 🩺 Diagnósticos, Errores & Trouble

| Atajo | Modo | Descripción | Acción / Comando |
| :--- | :--- | :--- | :--- |
| `<leader>ud` | Normal | Toggle Diagnostics | — |
| `<leader>xL` | Normal | Location List (Trouble) | `<Cmd>Trouble loclist toggle<CR>` |
| `<leader>xQ` | Normal | Quickfix List (Trouble) | `<Cmd>Trouble qflist toggle<CR>` |
| `<leader>xT` | Normal | Todo/Fix/Fixme (Trouble) | — |
| `<leader>xX` | Normal | Buffer Diagnostics (Trouble) | `<Cmd>Trouble diagnostics toggle filter.buf=0<CR>` |
| `<leader>xl` | Normal | Location List | — |
| `<leader>xq` | Normal | Quickfix List | — |
| `<leader>xt` | Normal | Todo (Trouble) | — |
| `<leader>xx` | Normal | Diagnostics (Trouble) | `<Cmd>Trouble diagnostics toggle<CR>` |
| `<C-W><C-D>` | Normal | Show diagnostics under the cursor | `<C-W>d` |
| `<C-W>d` | Normal | Show diagnostics under the cursor | — |
| `[D` | Normal | Jump to the first diagnostic in the current buffer | — |
| `[Q` | Normal | :crewind | — |
| `[d` | Normal | Prev Diagnostic | — |
| `[e` | Normal | Prev Error | — |
| `[q` | Normal | Previous Trouble/Quickfix Item | — |
| `[t` | Normal | Previous Todo Comment | — |
| `[w` | Normal | Prev Warning | — |
| `]D` | Normal | Jump to the last diagnostic in the current buffer | — |
| `]Q` | Normal | :clast | — |
| `]d` | Normal | Next Diagnostic | — |
| `]e` | Normal | Next Error | — |
| `]q` | Normal | Next Trouble/Quickfix Item | — |
| `]t` | Normal | Next Todo Comment | — |
| `]w` | Normal | Next Warning | — |

<a id="git"></a>
## 🐙 Git & Control de Versiones

| Atajo | Modo | Descripción | Acción / Comando |
| :--- | :--- | :--- | :--- |
| `<leader>gB` | Normal · Visual | Git Browse (open) | — |
| `<leader>gD` | Normal | Git Diff (origin) | — |
| `<leader>gG` | Normal | Lazygit (cwd) | — |
| `<leader>gI` | Normal | GitHub Issues (all) | — |
| `<leader>gL` | Normal | Git Log (cwd) | — |
| `<leader>gP` | Normal | GitHub Pull Requests (all) | — |
| `<leader>gS` | Normal | Git Stash | — |
| `<leader>gY` | Normal · Visual | Git Browse (copy) | — |
| `<leader>gb` | Normal | Git Blame Line | — |
| `<leader>gd` | Normal | Git Diff (hunks) | — |
| `<leader>gf` | Normal | Git Current File History | — |
| `<leader>gg` | Normal | Lazygit (Root Dir) | — |
| `<leader>gi` | Normal | GitHub Issues (open) | — |
| `<leader>gl` | Normal | Git Log | — |
| `<leader>gp` | Normal | GitHub Pull Requests (open) | — |
| `<leader>gs` | Normal | Git Status | — |

<a id="buffers"></a>
## 📑 Buffers & Pestañas (Bufferline)

| Atajo | Modo | Descripción | Acción / Comando |
| :--- | :--- | :--- | :--- |
| `<leader>.` | Normal | Toggle Scratch Buffer | — |
| `<leader>S` | Normal | Select Scratch Buffer | — |
| `<leader>`` | Normal | Switch to Other Buffer | `<Cmd>e #<CR>` |
| `<leader>bD` | Normal | Delete Buffer and Window | `<Cmd>:bd<CR>` |
| `<leader>bP` | Normal | Delete Non-Pinned Buffers | `<Cmd>BufferLineGroupClose ungrouped<CR>` |
| `<leader>bb` | Normal | Switch to Other Buffer | `<Cmd>e #<CR>` |
| `<leader>bd` | Normal | Delete Buffer | — |
| `<leader>bi` | Normal | Delete Invisible Buffers | — |
| `<leader>bj` | Normal | Pick Buffer | `<Cmd>BufferLinePick<CR>` |
| `<leader>bl` | Normal | Delete Buffers to the Left | `<Cmd>BufferLineCloseLeft<CR>` |
| `<leader>bo` | Normal | Delete Other Buffers | — |
| `<leader>bp` | Normal | Toggle Pin | `<Cmd>BufferLineTogglePin<CR>` |
| `<leader>br` | Normal | Delete Buffers to the Right | `<Cmd>BufferLineCloseRight<CR>` |
| `<leader>dps` | Normal | Profiler Scratch Buffer | — |
| `H` | Normal | Prev Buffer | `<Cmd>BufferLineCyclePrev<CR>` |
| `L` | Normal | Next Buffer | `<Cmd>BufferLineCycleNext<CR>` |
| `[B` | Normal | Move buffer prev | `<Cmd>BufferLineMovePrev<CR>` |
| `[b` | Normal | Prev Buffer | `<Cmd>BufferLineCyclePrev<CR>` |
| `]B` | Normal | Move buffer next | `<Cmd>BufferLineMoveNext<CR>` |
| `]b` | Normal | Next Buffer | `<Cmd>BufferLineCycleNext<CR>` |

<a id="ventanas"></a>
## 🪟 Ventanas & Splits

| Atajo | Modo | Descripción | Acción / Comando |
| :--- | :--- | :--- | :--- |
| `<leader>wd` | Normal | Delete Window | `<C-W>c` |
| `<leader>wm` | Normal | Toggle Zoom Mode | — |
| `<leader>\|` | Normal | Split Window Right | `<C-W>v` |
| `<C-Down>` | Normal | Decrease Window Height | `<Cmd>resize -2<CR>` |
| `<C-H>` | Normal | Go to Left Window | `<C-W>h` |
| `<C-J>` | Normal | Go to Lower Window | `<C-W>j` |
| `<C-K>` | Normal | Go to Upper Window | `<C-W>k` |
| `<C-L>` | Normal | Go to Right Window | `<C-W>l` |
| `<C-Left>` | Normal | Decrease Window Width | `<Cmd>vertical resize -2<CR>` |
| `<C-Right>` | Normal | Increase Window Width | `<Cmd>vertical resize +2<CR>` |
| `<C-W>` | Insert | Ayuda de Vim: i_CTRL-W-default | `<C-G>u<C-W>` |
| `<C-W><leader>` | Normal | Window Hydra Mode (which-key) | — |

<a id="flash"></a>
## ⚡ Flash & Saltos Rápidos

| Atajo | Modo | Descripción | Acción / Comando |
| :--- | :--- | :--- | :--- |
| `R` | Visual, Visual, Operator | Treesitter Search | — |
| `S` | Normal, Visual, Visual, Operator | Flash Treesitter | — |
| `r` | Operator | Remote Flash | — |
| `s` | Normal, Visual, Visual, Operator | Flash | — |

<a id="treesj"></a>
## 🌳 TreeSJ (Split / Join sintáctico)

| Atajo | Modo | Descripción | Acción / Comando |
| :--- | :--- | :--- | :--- |
| `<leader>j` | Normal | Acción interna de Neovim / Plugin | — |
| `<leader>m` | Normal | Acción interna de Neovim / Plugin | — |

<a id="tabout"></a>
## ⇥ Tabout (Escape de delimitadores)

| Atajo | Modo | Descripción | Acción / Comando |
| :--- | :--- | :--- | :--- |
| `<S-Tab>` | Insert | `<Plug>(TaboutBack)` | `<Plug>(TaboutBack)` |
| `<S-Tab>` | Visual | vim.snippet.jump if active, otherwise <S-Tab> | — |
| `<Tab>` | Insert | `<Plug>(Tabout)` | `<Plug>(Tabout)` |
| `<Tab>` | Visual | vim.snippet.jump if active, otherwise <Tab> | — |

<a id="comentarios"></a>
## 💬 Comentarios

| Atajo | Modo | Descripción | Acción / Comando |
| :--- | :--- | :--- | :--- |
| `gc` | Operator | Comment textobject | — |
| `gcO` | Normal | Add Comment Above | `O<Esc>Vcx<Esc><Cmd>normal gcc<CR>fxa<BS>` |
| `gco` | Normal | Add Comment Below | `o<Esc>Vcx<Esc><Cmd>normal gcc<CR>fxa<BS>` |

<a id="minipairs"></a>
## 🔗 MiniPairs (Auto-cierre de comillas/paréntesis)

| Atajo | Modo | Descripción | Acción / Comando |
| :--- | :--- | :--- | :--- |
| `"` | Insert, Cmdline | Closeopen action for '""' pair | `v:lua.MiniPairs.closeopen('""', "^[^\\]")` |
| `'` | Insert, Cmdline | Closeopen action for "''" pair | `v:lua.MiniPairs.closeopen("''", "^[^%a\\]")` |
| `(` | Insert, Cmdline | Open action for "()" pair | `v:lua.MiniPairs.open("()", "^[^\\]")` |
| `)` | Insert, Cmdline | Close action for "()" pair | `v:lua.MiniPairs.close("()", "^[^\\]")` |
| `<BS>` | Insert, Cmdline | MiniPairs <BS> | `v:lua.MiniPairs.bs()` |
| `<CR>` | Insert | MiniPairs <CR> | `v:lua.MiniPairs.cr()` |
| `[` | Insert, Cmdline | Open action for "[]" pair | `v:lua.MiniPairs.open("[]", "^[^\\]")` |
| `]` | Insert, Cmdline | Close action for "[]" pair | `v:lua.MiniPairs.close("[]", "^[^\\]")` |
| ``` | Insert, Cmdline | Closeopen action for "``" pair | `v:lua.MiniPairs.closeopen("``", "^[^\\]")` |
| `{` | Insert, Cmdline | Open action for "{}" pair | `v:lua.MiniPairs.open("{}", "^[^\\]")` |
| `}` | Insert, Cmdline | Close action for "{}" pair | `v:lua.MiniPairs.close("{}", "^[^\\]")` |

<a id="ui"></a>
## ⚙️ UI, Toggles & Opciones

| Atajo | Modo | Descripción | Acción / Comando |
| :--- | :--- | :--- | :--- |
| `<leader>dph` | Normal | Toggle Profiler Highlights | — |
| `<leader>dpp` | Normal | Toggle Profiler | — |
| `<leader>qq` | Normal | Quit All | `<Cmd>qa<CR>` |
| `<leader>uA` | Normal | Toggle Tabline | — |
| `<leader>uC` | Normal | Colorschemes | — |
| `<leader>uD` | Normal | Toggle Dimming | — |
| `<leader>uI` | Normal | Inspect Tree | — |
| `<leader>uL` | Normal | Toggle Relative Number | — |
| `<leader>uS` | Normal | Toggle Smooth Scroll | — |
| `<leader>uT` | Normal | Toggle Treesitter Highlight | — |
| `<leader>uZ` | Normal | Toggle Zoom Mode | — |
| `<leader>ua` | Normal | Toggle Animations | — |
| `<leader>ub` | Normal | Toggle Dark Background | — |
| `<leader>uc` | Normal | Toggle Conceal Level | — |
| `<leader>ug` | Normal | Toggle Indent Guides | — |
| `<leader>uh` | Normal | Toggle Inlay Hints | — |
| `<leader>ui` | Normal | Inspect Pos | — |
| `<leader>ul` | Normal | Toggle Line Numbers | — |
| `<leader>un` | Normal | Dismiss All Notifications | — |
| `<leader>up` | Normal | Toggle Mini Pairs | — |
| `<leader>ur` | Normal | Redraw / Clear hlsearch / Diff Update | `<Cmd>nohlsearch\|diffupdate\|normal! <C-L><CR>` |
| `<leader>us` | Normal | Toggle Spelling | — |
| `<leader>uw` | Normal | Toggle Wrap | — |
| `<leader>uz` | Normal | Toggle Zen Mode | — |
| `<C-S>` | Command | Toggle Flash Search | — |
| `gc` | Normal · Visual | Toggle comment | — |
| `gcc` | Normal | Toggle comment line | — |

<a id="terminal"></a>
## 💻 Terminal Integrada

| Atajo | Modo | Descripción | Acción / Comando |
| :--- | :--- | :--- | :--- |
| `<C-/>` | Normal, Terminal | Terminal (Root Dir) | — |
| `<C-_>` | Normal, Terminal | which_key_ignore | — |

<a id="sesiones"></a>
## 🚪 Sesiones & Salida

| Atajo | Modo | Descripción | Acción / Comando |
| :--- | :--- | :--- | :--- |
| `<leader>qS` | Normal | Select Session | — |
| `<leader>qd` | Normal | Don't Save Current Session | — |
| `<leader>ql` | Normal | Restore Last Session | — |
| `<leader>qs` | Normal | Restore Session | — |

<a id="corchetes"></a>
## 🧭 Navegación con Corchetes ([ y ])

| Atajo | Modo | Descripción | Acción / Comando |
| :--- | :--- | :--- | :--- |
| `[%` | Normal | `<Plug>(MatchitNormalMultiBackward)` | `<Plug>(MatchitNormalMultiBackward)` |
| `[%` | Operator | `<Plug>(MatchitOperationMultiBackward)` | `<Plug>(MatchitOperationMultiBackward)` |
| `[%` | Visual | `<Plug>(MatchitVisualMultiBackward)` | `<Plug>(MatchitVisualMultiBackward)` |
| `[<C-L>` | Normal | :lpfile | — |
| `[<C-Q>` | Normal | :cpfile | — |
| `[<C-T>` | Normal | :ptprevious | — |
| `[<leader>` | Normal | Add empty line above cursor | — |
| `[A` | Normal | :rewind | — |
| `[L` | Normal | :lrewind | — |
| `[N` | Visual | Select previous sibling node | — |
| `[T` | Normal | :trewind | — |
| `[a` | Normal | :previous | — |
| `[l` | Normal | :lprevious | — |
| `[n` | Visual | Select previous node | — |
| `]%` | Normal | `<Plug>(MatchitNormalMultiForward)` | `<Plug>(MatchitNormalMultiForward)` |
| `]%` | Operator | `<Plug>(MatchitOperationMultiForward)` | `<Plug>(MatchitOperationMultiForward)` |
| `]%` | Visual | `<Plug>(MatchitVisualMultiForward)` | `<Plug>(MatchitVisualMultiForward)` |
| `]<C-L>` | Normal | :lnfile | — |
| `]<C-Q>` | Normal | :cnfile | — |
| `]<C-T>` | Normal | :ptnext | — |
| `]<leader>` | Normal | Add empty line below cursor | — |
| `]A` | Normal | :last | — |
| `]L` | Normal | :llast | — |
| `]N` | Visual | Select next sibling node | — |
| `]T` | Normal | :tlast | — |
| `]a` | Normal | :next | — |
| `]l` | Normal | :lnext | — |
| `]n` | Visual | Select next node | — |

<a id="general"></a>
## 🚀 Navegación & Edición General

| Atajo | Modo | Descripción | Acción / Comando |
| :--- | :--- | :--- | :--- |
| `<leader><Tab><Tab>` | Normal | New Tab | `<Cmd>tabnew<CR>` |
| `<leader><Tab>[` | Normal | Previous Tab | `<Cmd>tabprevious<CR>` |
| `<leader><Tab>]` | Normal | Next Tab | `<Cmd>tabnext<CR>` |
| `<leader><Tab>d` | Normal | Close Tab | `<Cmd>tabclose<CR>` |
| `<leader><Tab>f` | Normal | First Tab | `<Cmd>tabfirst<CR>` |
| `<leader><Tab>l` | Normal | Last Tab | `<Cmd>tablast<CR>` |
| `<leader><Tab>o` | Normal | Close Other Tabs | `<Cmd>tabonly<CR>` |
| `<leader><leader>` | Normal | Find Files (Root Dir) | — |
| `<leader>K` | Normal | Keywordprg | `<Cmd>norm! K<CR>` |
| `<leader>L` | Normal | LazyVim Changelog | — |
| `<leader>l` | Normal | Lazy | `<Cmd>Lazy<CR>` |
| `<leader>n` | Normal | Notification History | — |
| `%` | Normal | `<Plug>(MatchitNormalForward)` | `<Plug>(MatchitNormalForward)` |
| `%` | Operator | `<Plug>(MatchitOperationForward)` | `<Plug>(MatchitOperationForward)` |
| `&` | Normal | Ayuda de Vim: &-default | `:&&<CR>` |
| `,` | Normal, Visual, Visual, Operator | Acción interna de Neovim / Plugin | — |
| `;` | Normal, Visual, Visual, Operator | Acción interna de Neovim / Plugin | — |
| `<C-B>` | Normal, Visual, Insert | Scroll Backward | — |
| `<C-F>` | Normal, Visual, Insert | Scroll Forward | — |
| `<C-S>` | Normal, Visual, Visual, Insert | Save File | `<Cmd>w<CR><Esc>` |
| `<C-Space>` | Normal, Visual, Visual, Operator | Treesitter Incremental Selection | — |
| `<Down>` | Normal · Visual | Down | `v:count == 0 ? 'gj' : 'j'` |
| `<Esc>` | Normal, Visual, Insert | Escape and Clear hlsearch | — |
| `<M-j>` | Normal | Move Down | `<Cmd>execute 'move .+' . v:count1<CR>==` |
| `<M-k>` | Normal | Move Up | `<Cmd>execute 'move .-' . (v:count1 + 1)<CR>==` |
| `<ScrollWheelDown>` | Normal, Visual, Visual, Operator, Insert | Acción interna de Neovim / Plugin | — |
| `<ScrollWheelUp>` | Normal, Visual, Visual, Operator, Insert | Acción interna de Neovim / Plugin | — |
| `<Up>` | Normal · Visual | Up | `v:count == 0 ? 'gk' : 'k'` |
| `F` | Normal, Visual, Visual, Operator | Acción interna de Neovim / Plugin | — |
| `N` | Normal | Prev Search Result | `'nN'[v:searchforward].'zv'` |
| `N` | Visual, Visual, Operator | Prev Search Result | `'nN'[v:searchforward]` |
| `T` | Normal, Visual, Visual, Operator | Acción interna de Neovim / Plugin | — |
| `Y` | Normal | Ayuda de Vim: Y-default | `y$` |
| `a` | Visual, Visual, Operator | Around textobject | — |
| `al` | Visual, Visual, Operator | Around last textobject | — |
| `an` | Visual, Visual, Operator | Around next textobject | — |
| `f` | Normal, Visual, Visual, Operator | Acción interna de Neovim / Plugin | — |
| `g%` | Normal | `<Plug>(MatchitNormalBackward)` | `<Plug>(MatchitNormalBackward)` |
| `g%` | Operator | `<Plug>(MatchitOperationBackward)` | `<Plug>(MatchitOperationBackward)` |
| `g[` | Normal, Visual, Visual, Operator | Move to left "around" | — |
| `g]` | Normal, Visual, Visual, Operator | Move to right "around" | — |
| `i` | Visual, Visual, Operator | Inside textobject | — |
| `il` | Visual, Visual, Operator | Inside last textobject | — |
| `in` | Visual, Visual, Operator | Inside next textobject | — |
| `j` | Normal · Visual | Down | `v:count == 0 ? 'gj' : 'j'` |
| `k` | Normal · Visual | Up | `v:count == 0 ? 'gk' : 'k'` |
| `n` | Normal | Next Search Result | `'Nn'[v:searchforward].'zv'` |
| `n` | Visual, Visual, Operator | Next Search Result | `'Nn'[v:searchforward]` |
| `t` | Normal, Visual, Visual, Operator | Acción interna de Neovim / Plugin | — |

<a id="insert"></a>
## ✍️ Atajos de Modo Insert

| Atajo | Modo | Descripción | Acción / Comando |
| :--- | :--- | :--- | :--- |
| `,` | Insert | `,<C-G>u` | `,<C-G>u` |
| `.` | Insert | `.<C-G>u` | `.<C-G>u` |
| `;` | Insert | `;<C-G>u` | `;<C-G>u` |
| `<C-U>` | Insert | Ayuda de Vim: i_CTRL-U-default | `<C-G>u<C-U>` |
| `<M-j>` | Insert | Move Down | `<Esc><Cmd>m .+1<CR>==gi` |
| `<M-k>` | Insert | Move Up | `<Esc><Cmd>m .-2<CR>==gi` |

<a id="visual"></a>
## ✂️ Atajos de Modo Visual / Selección

| Atajo | Modo | Descripción | Acción / Comando |
| :--- | :--- | :--- | :--- |
| `#` | Visual | Ayuda de Vim: v_#-default | — |
| `%` | Visual | `<Plug>(MatchitVisualForward)` | `<Plug>(MatchitVisualForward)` |
| `*` | Visual | Ayuda de Vim: v_star-default | — |
| `<M-j>` | Visual | Move Down | `:<C-U>execute "'<lt>,'>move '>+" . v:count1<CR>gv=gv` |
| `<M-k>` | Visual | Move Up | `:<C-U>execute "'<lt>,'>move '<lt>-" . (v:count1 + 1)<CR>g...` |
| `<lt>` | Visual | `<lt>gv` | `<lt>gv` |
| `>` | Visual | `>gv` | `>gv` |
| `@` | Visual | Ayuda de Vim: v_@-default | `mode() ==# 'V' ? ':normal! @'.getcharstr().'<CR>' : '@'` |
| `Q` | Visual | Ayuda de Vim: v_Q-default | `mode() ==# 'V' ? ':normal! @<C-R>=reg_recorded()<CR><CR>'...` |
| `a%` | Visual | `<Plug>(MatchitVisualTextObject)` | `<Plug>(MatchitVisualTextObject)` |
| `g%` | Visual | `<Plug>(MatchitVisualBackward)` | `<Plug>(MatchitVisualBackward)` |

<a id="cmdline"></a>
## ⌨️ Línea de Comandos

| Atajo | Modo | Descripción | Acción / Comando |
| :--- | :--- | :--- | :--- |
| `<S-CR>` | Command | Redirect Cmdline | — |
