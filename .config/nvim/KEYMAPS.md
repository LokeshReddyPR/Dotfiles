# LazyVim Keymaps Reference

Auto-generated from the live keymaps of this config on 2026-07-20.

- **Leader** = `<Space>`, **LocalLeader** = `\`
- `<Lua function>` in the Mapping column means the action is a Lua callback (see the plugin/config that defines it).
- Buffer-local maps (LSP, set on attach) don't appear in a global dump; the common LazyVim LSP maps are listed in a static section at the end.

## Normal mode

| Keys | Action | Mapping |
|------|--------|---------|
| `<Space><Space>` | Find Files (Root Dir) | <Lua function> |
| `<Space>,` | Buffers | <Lua function> |
| `<Space>.` | Toggle Scratch Buffer | <Lua function> |
| `<Space>/` | Grep (Root Dir) | <Lua function> |
| `<Space>:` | Command History | <Lua function> |
| `<Space>?` | Buffer Keymaps (which-key) | <Lua function> |
| `<Space>E` | Explorer Snacks (cwd) |  fE |
| `<Space>S` | Select Scratch Buffer | <Lua function> |
| `<Space>bP` | Delete Non-Pinned Buffers | <Lua function> |
| `<Space>bj` | Pick Buffer | <Lua function> |
| `<Space>bl` | Delete Buffers to the Left | <Lua function> |
| `<Space>bp` | Toggle Pin | <Lua function> |
| `<Space>br` | Delete Buffers to the Right | <Lua function> |
| `<Space>cF` | Format Injected Langs | <Lua function> |
| `<Space>cS` | LSP references/definitions/... (Trouble) | <Lua function> |
| `<Space>cm` | Mason | <Lua function> |
| `<Space>cs` | Symbols (Trouble) | <Lua function> |
| `<Space>dps` | Profiler Scratch Buffer | <Lua function> |
| `<Space>e` | Explorer Snacks (root dir) |  fe |
| `<Space>fB` | Buffers (all) | <Lua function> |
| `<Space>fE` | Explorer Snacks (cwd) | <Lua function> |
| `<Space>fF` | Find Files (cwd) | <Lua function> |
| `<Space>fR` | Recent (cwd) | <Lua function> |
| `<Space>fb` | Buffers | <Lua function> |
| `<Space>fc` | Find Config File | <Lua function> |
| `<Space>fe` | Explorer Snacks (root dir) | <Lua function> |
| `<Space>ff` | Find Files (Root Dir) | <Lua function> |
| `<Space>fg` | Find Files (git-files) | <Lua function> |
| `<Space>fp` | Projects | <Lua function> |
| `<Space>fr` | Recent | <Lua function> |
| `<Space>gD` | Git Diff (origin) | <Lua function> |
| `<Space>gI` | GitHub Issues (all) | <Lua function> |
| `<Space>gP` | GitHub Pull Requests (all) | <Lua function> |
| `<Space>gS` | Git Stash | <Lua function> |
| `<Space>gd` | Git Diff (hunks) | <Lua function> |
| `<Space>gi` | GitHub Issues (open) | <Lua function> |
| `<Space>gp` | GitHub Pull Requests (open) | <Lua function> |
| `<Space>gs` | Git Status | <Lua function> |
| `<Space>n` | Notification History | <Lua function> |
| `<Space>qS` | Select Session | <Lua function> |
| `<Space>qd` | Don't Save Current Session | <Lua function> |
| `<Space>ql` | Restore Last Session | <Lua function> |
| `<Space>qs` | Restore Session | <Lua function> |
| `<Space>s"` | Registers | <Lua function> |
| `<Space>s/` | Search History | <Lua function> |
| `<Space>sB` | Grep Open Buffers | <Lua function> |
| `<Space>sC` | Commands | <Lua function> |
| `<Space>sD` | Buffer Diagnostics | <Lua function> |
| `<Space>sG` | Grep (cwd) | <Lua function> |
| `<Space>sH` | Highlights | <Lua function> |
| `<Space>sM` | Man Pages | <Lua function> |
| `<Space>sR` | Resume | <Lua function> |
| `<Space>sT` | Todo/Fix/Fixme | <Lua function> |
| `<Space>sW` | Visual selection or word (cwd) | <Lua function> |
| `<Space>sa` | Autocmds | <Lua function> |
| `<Space>sb` | Buffer Lines | <Lua function> |
| `<Space>sc` | Command History | <Lua function> |
| `<Space>sd` | Diagnostics | <Lua function> |
| `<Space>sg` | Grep (Root Dir) | <Lua function> |
| `<Space>sh` | Help Pages | <Lua function> |
| `<Space>si` | Icons | <Lua function> |
| `<Space>sj` | Jumps | <Lua function> |
| `<Space>sk` | Keymaps | <Lua function> |
| `<Space>sl` | Location List | <Lua function> |
| `<Space>sm` | Marks | <Lua function> |
| `<Space>sn` | +noice |  |
| `<Space>sna` | Noice All | <Lua function> |
| `<Space>snd` | Dismiss All | <Lua function> |
| `<Space>snh` | Noice History | <Lua function> |
| `<Space>snl` | Noice Last Message | <Lua function> |
| `<Space>snt` | Noice Picker (Telescope/FzfLua) | <Lua function> |
| `<Space>sp` | Search for Plugin Spec | <Lua function> |
| `<Space>sq` | Quickfix List | <Lua function> |
| `<Space>sr` | Search and Replace | <Lua function> |
| `<Space>st` | Todo | <Lua function> |
| `<Space>su` | Undotree | <Lua function> |
| `<Space>sw` | Visual selection or word (Root Dir) | <Lua function> |
| `<Space>uC` | Colorschemes | <Lua function> |
| `<Space>un` | Dismiss All Notifications | <Lua function> |
| `<Space>xL` | Location List (Trouble) | <Lua function> |
| `<Space>xQ` | Quickfix List (Trouble) | <Lua function> |
| `<Space>xT` | Todo/Fix/Fixme (Trouble) | <Lua function> |
| `<Space>xX` | Buffer Diagnostics (Trouble) | <Lua function> |
| `<Space>xt` | Todo (Trouble) | <Lua function> |
| `<Space>xx` | Diagnostics (Trouble) | <Lua function> |
| `%` |  | <Plug>(MatchitNormalForward) |
| `&` | :help &-default | :&&<CR> |
| `<C-B>` | Scroll Backward | <Lua function> |
| `<C-F>` | Scroll Forward | <Lua function> |
| `<C-H>` | Navigate left (tmux/vim) | <Lua function> |
| `<C-J>` | Navigate down (tmux/vim) | <Lua function> |
| `<C-K>` | Navigate up (tmux/vim) | <Lua function> |
| `<C-L>` | Navigate right (tmux/vim) | <Lua function> |
| `<C-Space>` | Treesitter Incremental Selection | <Lua function> |
| `<C-W><Space>` | Window Hydra Mode (which-key) | <Lua function> |
| `<C-W><C-D>` | Show diagnostics under the cursor | <C-W>d |
| `<C-W>d` | Show diagnostics under the cursor | <Lua function> |
| `<Plug>(MatchitNormalBackward)` |  | :<C-U>call matchit#Match_wrapper('',0,'n')<CR> |
| `<Plug>(MatchitNormalForward)` |  | :<C-U>call matchit#Match_wrapper('',1,'n')<CR> |
| `<Plug>(MatchitNormalMultiBackward)` |  | :<C-U>call matchit#MultiMatch("bW", "n")<CR> |
| `<Plug>(MatchitNormalMultiForward)` |  | :<C-U>call matchit#MultiMatch("W",  "n")<CR> |
| `H` | Prev Buffer | <Lua function> |
| `L` | Next Buffer | <Lua function> |
| `S` | Flash Treesitter | <Lua function> |
| `Y` | :help Y-default | y$ |
| `[<Space>` | Add empty line above cursor | <Lua function> |
| `[%` |  | <Plug>(MatchitNormalMultiBackward) |
| `[<C-L>` | :lpfile | <Lua function> |
| `[<C-Q>` | :cpfile | <Lua function> |
| `[<C-T>` | :ptprevious | <Lua function> |
| `[A` | :rewind | <Lua function> |
| `[B` | Move buffer prev | <Lua function> |
| `[D` | Jump to the first diagnostic in the current buffer | <Lua function> |
| `[L` | :lrewind | <Lua function> |
| `[Q` | :crewind | <Lua function> |
| `[T` | :trewind | <Lua function> |
| `[a` | :previous | <Lua function> |
| `[b` | Prev Buffer | <Lua function> |
| `[d` | Jump to the previous diagnostic in the current buffer | <Lua function> |
| `[l` | :lprevious | <Lua function> |
| `[q` | Previous Trouble/Quickfix Item | <Lua function> |
| `[t` | Previous Todo Comment | <Lua function> |
| `]<Space>` | Add empty line below cursor | <Lua function> |
| `]%` |  | <Plug>(MatchitNormalMultiForward) |
| `]<C-L>` | :lnfile | <Lua function> |
| `]<C-Q>` | :cnfile | <Lua function> |
| `]<C-T>` | :ptnext | <Lua function> |
| `]A` | :last | <Lua function> |
| `]B` | Move buffer next | <Lua function> |
| `]D` | Jump to the last diagnostic in the current buffer | <Lua function> |
| `]L` | :llast | <Lua function> |
| `]Q` | :clast | <Lua function> |
| `]T` | :tlast | <Lua function> |
| `]a` | :next | <Lua function> |
| `]b` | Next Buffer | <Lua function> |
| `]d` | Jump to the next diagnostic in the current buffer | <Lua function> |
| `]l` | :lnext | <Lua function> |
| `]q` | Next Trouble/Quickfix Item | <Lua function> |
| `]t` | Next Todo Comment | <Lua function> |
| `g%` |  | <Plug>(MatchitNormalBackward) |
| `gO` | vim.lsp.buf.document_symbol() | <Lua function> |
| `gc` | Toggle comment | <Lua function> |
| `gcc` | Toggle comment line | <Lua function> |
| `gra` | vim.lsp.buf.code_action() | <Lua function> |
| `gri` | vim.lsp.buf.implementation() | <Lua function> |
| `grn` | vim.lsp.buf.rename() | <Lua function> |
| `grr` | vim.lsp.buf.references() | <Lua function> |
| `grt` | vim.lsp.buf.type_definition() | <Lua function> |
| `grx` | vim.lsp.codelens.run() | <Lua function> |
| `gx` | Opens filepath or URI under cursor with the system handler (file explorer, web browser, …) | <Lua function> |
| `s` | Flash | <Lua function> |

## Insert mode

| Keys | Action | Mapping |
|------|--------|---------|
| `<C-B>` | Scroll Backward | <Lua function> |
| `<C-F>` | Scroll Forward | <Lua function> |
| `<C-S>` | vim.lsp.buf.signature_help() | <Lua function> |
| `<C-U>` | :help i_CTRL-U-default | <C-G>u<C-U> |
| `<C-W>` | :help i_CTRL-W-default | <C-G>u<C-W> |
| `<S-Tab>` | vim.snippet.jump if active, otherwise <S-Tab> | <Lua function> |
| `<Tab>` | vim.snippet.jump if active, otherwise <Tab> | <Lua function> |

## Visual / Select mode

| Keys | Action | Mapping |
|------|--------|---------|
| `<Space>cF` | Format Injected Langs | <Lua function> |
| `<Space>sW` | Visual selection or word (cwd) | <Lua function> |
| `<Space>sr` | Search and Replace | <Lua function> |
| `<Space>sw` | Visual selection or word (Root Dir) | <Lua function> |
| `#` | :help v_#-default | <Lua function> |
| `%` |  | <Plug>(MatchitVisualForward) |
| `*` | :help v_star-default | <Lua function> |
| `<C-B>` | Scroll Backward | <Lua function> |
| `<C-F>` | Scroll Forward | <Lua function> |
| `<C-S>` | vim.lsp.buf.signature_help() | <Lua function> |
| `<C-Space>` | Treesitter Incremental Selection | <Lua function> |
| `<Plug>(MatchitVisualBackward)` |  | :<C-U>call matchit#Match_wrapper('',0,'v')<CR>m'gv`` |
| `<Plug>(MatchitVisualForward)` |  | :<C-U>call matchit#Match_wrapper('',1,'v')<CR>:if col("''") != col("$") \| exe ":normal! m'" \| endif<CR>gv`` |
| `<Plug>(MatchitVisualMultiBackward)` |  | :<C-U>call matchit#MultiMatch("bW", "n")<CR>m'gv`` |
| `<Plug>(MatchitVisualMultiForward)` |  | :<C-U>call matchit#MultiMatch("W",  "n")<CR>m'gv`` |
| `<Plug>(MatchitVisualTextObject)` |  | <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward) |
| `<S-Tab>` | vim.snippet.jump if active, otherwise <S-Tab> | <Lua function> |
| `<Tab>` | vim.snippet.jump if active, otherwise <Tab> | <Lua function> |
| `@` | :help v_@-default | mode() ==# 'V' ? ':normal! @'.getcharstr().'<CR>' : '@' |
| `Q` | :help v_Q-default | mode() ==# 'V' ? ':normal! @<C-R>=reg_recorded()<CR><CR>' : 'Q' |
| `R` | Treesitter Search | <Lua function> |
| `S` | Flash Treesitter | <Lua function> |
| `[%` |  | <Plug>(MatchitVisualMultiBackward) |
| `[N` | Select previous sibling node | <Lua function> |
| `[n` | Select previous node | <Lua function> |
| `]%` |  | <Plug>(MatchitVisualMultiForward) |
| `]N` | Select next sibling node | <Lua function> |
| `]n` | Select next node | <Lua function> |
| `a%` |  | <Plug>(MatchitVisualTextObject) |
| `an` | Select parent (outer) node | <Lua function> |
| `g%` |  | <Plug>(MatchitVisualBackward) |
| `gc` | Toggle comment | <Lua function> |
| `gra` | vim.lsp.buf.code_action() | <Lua function> |
| `gx` | Opens filepath or URI under cursor with the system handler (file explorer, web browser, …) | <Lua function> |
| `in` | Select child (inner) node | <Lua function> |
| `s` | Flash | <Lua function> |

## Visual (charwise/blockwise) mode

| Keys | Action | Mapping |
|------|--------|---------|
| `<Space>cF` | Format Injected Langs | <Lua function> |
| `<Space>sW` | Visual selection or word (cwd) | <Lua function> |
| `<Space>sr` | Search and Replace | <Lua function> |
| `<Space>sw` | Visual selection or word (Root Dir) | <Lua function> |
| `#` | :help v_#-default | <Lua function> |
| `%` |  | <Plug>(MatchitVisualForward) |
| `*` | :help v_star-default | <Lua function> |
| `<C-Space>` | Treesitter Incremental Selection | <Lua function> |
| `<Plug>(MatchitVisualBackward)` |  | :<C-U>call matchit#Match_wrapper('',0,'v')<CR>m'gv`` |
| `<Plug>(MatchitVisualForward)` |  | :<C-U>call matchit#Match_wrapper('',1,'v')<CR>:if col("''") != col("$") \| exe ":normal! m'" \| endif<CR>gv`` |
| `<Plug>(MatchitVisualMultiBackward)` |  | :<C-U>call matchit#MultiMatch("bW", "n")<CR>m'gv`` |
| `<Plug>(MatchitVisualMultiForward)` |  | :<C-U>call matchit#MultiMatch("W",  "n")<CR>m'gv`` |
| `<Plug>(MatchitVisualTextObject)` |  | <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward) |
| `@` | :help v_@-default | mode() ==# 'V' ? ':normal! @'.getcharstr().'<CR>' : '@' |
| `Q` | :help v_Q-default | mode() ==# 'V' ? ':normal! @<C-R>=reg_recorded()<CR><CR>' : 'Q' |
| `R` | Treesitter Search | <Lua function> |
| `S` | Flash Treesitter | <Lua function> |
| `[%` |  | <Plug>(MatchitVisualMultiBackward) |
| `[N` | Select previous sibling node | <Lua function> |
| `[n` | Select previous node | <Lua function> |
| `]%` |  | <Plug>(MatchitVisualMultiForward) |
| `]N` | Select next sibling node | <Lua function> |
| `]n` | Select next node | <Lua function> |
| `a%` |  | <Plug>(MatchitVisualTextObject) |
| `an` | Select parent (outer) node | <Lua function> |
| `g%` |  | <Plug>(MatchitVisualBackward) |
| `gc` | Toggle comment | <Lua function> |
| `gra` | vim.lsp.buf.code_action() | <Lua function> |
| `gx` | Opens filepath or URI under cursor with the system handler (file explorer, web browser, …) | <Lua function> |
| `in` | Select child (inner) node | <Lua function> |
| `s` | Flash | <Lua function> |

## Select mode

| Keys | Action | Mapping |
|------|--------|---------|
| `<C-B>` | Scroll Backward | <Lua function> |
| `<C-F>` | Scroll Forward | <Lua function> |
| `<C-S>` | vim.lsp.buf.signature_help() | <Lua function> |
| `<S-Tab>` | vim.snippet.jump if active, otherwise <S-Tab> | <Lua function> |
| `<Tab>` | vim.snippet.jump if active, otherwise <Tab> | <Lua function> |

## Operator-pending mode

| Keys | Action | Mapping |
|------|--------|---------|
| `%` |  | <Plug>(MatchitOperationForward) |
| `<C-Space>` | Treesitter Incremental Selection | <Lua function> |
| `<Plug>(MatchitOperationBackward)` |  | :<C-U>call matchit#Match_wrapper('',0,'o')<CR> |
| `<Plug>(MatchitOperationForward)` |  | :<C-U>call matchit#Match_wrapper('',1,'o')<CR> |
| `<Plug>(MatchitOperationMultiBackward)` |  | :<C-U>call matchit#MultiMatch("bW", "o")<CR> |
| `<Plug>(MatchitOperationMultiForward)` |  | :<C-U>call matchit#MultiMatch("W",  "o")<CR> |
| `R` | Treesitter Search | <Lua function> |
| `S` | Flash Treesitter | <Lua function> |
| `[%` |  | <Plug>(MatchitOperationMultiBackward) |
| `]%` |  | <Plug>(MatchitOperationMultiForward) |
| `an` | Select parent (outer) node | <Lua function> |
| `g%` |  | <Plug>(MatchitOperationBackward) |
| `gc` | Comment textobject | <Lua function> |
| `in` | Select child (inner) node | <Lua function> |
| `r` | Remote Flash | <Lua function> |
| `s` | Flash | <Lua function> |

## Command-line mode

| Keys | Action | Mapping |
|------|--------|---------|
| `<C-S>` | Toggle Flash Search | <Lua function> |
| `<S-CR>` | Redirect Cmdline | <Lua function> |

## Common LazyVim LSP keymaps (buffer-local, active when an LSP attaches)

These are set on `LspAttach` so they only exist inside a buffer with a language server running.

| Keys | Action |
|------|--------|
| `gd` | Go to Definition |
| `gr` | References |
| `gI` | Go to Implementation |
| `gy` | Go to Type Definition |
| `gD` | Go to Declaration |
| `K` | Hover documentation |
| `gK` | Signature Help |
| `<C-k>` (insert) | Signature Help |
| `<leader>ca` | Code Action |
| `<leader>cc` | Run Codelens |
| `<leader>cC` | Refresh & Display Codelens |
| `<leader>cr` | Rename |
| `<leader>cR` | Rename File |
| `<leader>cA` | Source Action |
| `]]` / `[[` | Next/Prev Reference |
