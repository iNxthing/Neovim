# ⚡ Neovim (LazyVim)

Configuración personal de Neovim construida sobre [LazyVim](https://github.com/LazyVim/LazyVim) (v12) y [lazy.nvim](https://github.com/folke/lazy.nvim).

Incluye autocompletado con snippets (blink.cmp + friendly-snippets + snippets propios + Emmet), LSP para varios lenguajes, explorador de archivos, fuzzy finder, integración con cliente OMARCHY y clipboard remoto (OSC 52).

> Probada con **Neovim 0.12.5** (requiere **≥ 0.11.2**).

---

## 📋 Requisitos / Dependencias

### Obligatorias

| Dependencia | Versión | Para qué | Omarchy / Arch |
|---|---|---|---|
| **Neovim** | ≥ 0.11.2 (LuaJIT) | el editor | `sudo pacman -S neovim` |
| **git** | — | lazy.nvim clona los plugins | `sudo pacman -S git` |
| **Nerd Font** | — | iconos de la UI, p.ej. *JetBrainsMono Nerd Font* | ya viene en Omarchy · o `sudo pacman -S nerd-fonts-jetbrains-mono` |
| **Node.js + npm** | ≥ 20 | Mason descarga los LSP de JS/TS, HTML, CSS, Vue, Emmet, JSON, YAML… | `sudo pacman -S nodejs npm` |
| **ripgrep + fd** | — | buscadores de LazyVim (`<leader>sg`, `<leader>ff`) | `sudo pacman -S ripgrep fd` |
| **base-devel** (gcc, make) | — | compila los parsers de nvim-treesitter y telescope-fzf-native | `sudo pacman -S --needed base-devel` |
| **Python 3** | — | algunos LSP y herramientas (basedpyright, pyright) | `sudo pacman -S python` |
| **inotify-tools** | — | file-watching del LSP (`workspace/didChangeWatchedFiles`): que basedpyright vea los `.py` creados después de arrancar, sin quedar "Type unknown" | `sudo pacman -S inotify-tools` |
| curl, tar, unzip | — | blinks binarios de blink.cmp y paquetes de Mason | vienen con el sistema |

**Otras distros (Debian/Ubuntu):** `sudo apt install neovim git ripgrep fd-find nodejs npm python3 build-essential curl inotify-tools` y una [Nerd Font](https://www.nerdfonts.com/font-downloads).

> **macOS:** `inotify-tools` no aplica: Neovim solo omite `didChangeWatchedFiles` en Linux/BSD. Sin `inotifywait`, Neovim usa `watchdirs` (polling): funciona, solo es menos eficiente.
>
> **Comprobación** (abre un `.py` y ejecuta): `:lua print(vim.inspect(vim.tbl_keys(vim.lsp.get_clients()[1].registrations)))` → debe incluir `"workspace/didChangeWatchedFiles"`.

### Solo si vas a usar esos lenguajes

| Lenguaje | Dependencia | LSP | Instalación |
|---|---|---|---|
| Java / Kotlin | JDK ≥ 17 | `jdtls` | `sudo pacman -S jdk-openjdk` |
| C# / VB.NET | .NET SDK (o Mono) | `omnisharp` | `sudo pacman -S dotnet-sdk` |
| SQL (variante `sqls`) | Go | `sqls` | no requiere: se usa `sqlls` (npm) · si cambias a `sqls`: `sudo pacman -S go` |

### Opcionales

| Dependencia | Para qué |
|---|---|
| `tmux` + `wl-clipboard` | clipboard remoto OSC 52 (`lua/config/remote_clipboard.lua`): copiar/pegar entre máquinas por SSH/tmux |
| Discord | Rich Presence (`cord.nvim`) con `<leader>cp` |

### Se instalan solos (sin pedir nada)

- **lazy.nvim** → se clona automáticamente en el primer arranque.
- **Plugins** → lazy.nvim los instala según `lazy-lock.json` (versiones fijas).
- **LSP y herramientas** → Mason los instala en cuanto abres un archivo de ese tipo (`:Mason` para gestionar).
- **Parsers de nvim-treesitter** → se compilan en el primer arranque (necesitan `base-devel`).

---

## 🚀 Instalación

```bash
# 1. (Opcional) guarda tu config actual
mv ~/.config/nvim ~/.config/nvim.bak

# 2. Clona este repo como tu config
git clone https://github.com/iNxthing/Neovim.git ~/.config/nvim

# 3. Abre Neovim: lazy.nvim se instala y descarga todos los plugins
nvim
```

El primer arranque tarda unos segundos (fetch de ~60 plugins y compilación de parsers). Después:

- Fija las versiones exactas del repo con `:Lazy restore`.
- Si algún LSP no se auto-instaló: `:MasonInstall <paquete>` o `:Mason`.
- Fuente con iconos: selecciónala en la config de tu terminal (recomendado **JetBrainsMono Nerd Font**).

---

## 🗂 Estructura

```
~/.config/nvim
├── init.lua                    # 1 línea: require("config.lazy")
├── lazyvim.json                # extras de LazyVim activos
├── lazy-lock.json              # snapshot de versiones (no editar a mano)
├── snippets/                   # 🇪🇸 snippets propios (blink los lee por filetype)
│   ├── vue.json                # 10 snippets
│   ├── python.json             # 9
│   ├── lua.json                # 9
│   ├── typescript.json         # 10
│   └── javascript.json         # 9
└── lua/
    ├── config/                 # el "cerebro": opciones, keymaps, autocmds…
    └── plugins/                # un archivo por feature (import automático)
```

**Extras de LazyVim activos** (`lazyvim.json`): `coding.blink`, `editor.neo-tree`, `editor.snacks_picker`, `lang.typescript` (+ `vtsls`) y `lang.vue`. Se gestionan con `:LazyExtras`.

---

## 🧠 LSP y herramientas (Mason)

| Server | Lenguaje |
|---|---|
| `vtsls` | TypeScript / JavaScript (desde el extra `lang.typescript`) |
| `vue_ls` | Vue SFC (reenvía TS a `vtsls`) |
| `emmet_ls` | Emmet en HTML/CSS/SCSS/JSX/Vue/Svelte/Astro |
| `html` / `cssls` | HTML · CSS/SCSS/Less |
| `lua_ls` | Lua (viene activo por defecto en LazyVim) |
| `basedpyright` | Python |
| `omnisharp` | C# / VB.NET |
| `jdtls` | Java / Kotlin |
| `sqlls` | SQL |
| `jsonls` / `yamlls` | JSON · YAML |
| `bashls` | Bash |
| `marksman` | Markdown |

También: **stylua** (formato Lua) y **shfmt** (formato shell).

---

## ✂️ Snippets

- **Cómo usarlos**: escribe el prefijo → `Tab` expande y salta entre campos (realmente es el preset `super-tab` de blink.cmp: `Tab` acepta/avanza, `Shift-Tab` retrocede).
- **Fuentes** (el menú te muestra la columna de origen): `lsp` (Emmet), `snippets` (friendly-snippets + los tuyos) y `path`/`buffer`.

### Prefijos propios

| Lua (`lua.json`) | Python (`python.json`) | Vue (`vue.json`) | TypeScript | JavaScript |
|---|---|---|---|---|
| `lplugin` spec de plugin | `pmain` `if __name__…` | `vsetup` SFC `<script setup>` | `tsfn` función | `jsfn` función |
| `laugroup` autocmds | `pclass` dataclass | `vref` / `vcomputed` / `vwatch` | `tsasync` | `jsasync` |
| `lkey` keymap | `ptest` / `pfixture` pytest | `vonmount` / `vprop` / `vemit` | `tsiface` / `tstype` | `jsfetch` / `jstry` |
| `lreq` / `lpcall` | `popen` / `ptry` | `vslot` / `vfor` / `vif` | `tsfetch` / `tstry` | `jsdes` / `jsdom` |
| `lfn` / `lopt` / `lerr` / `lguard` | `parg` / `pasync` / `pdecl` | — | `tsdes` / `tsprom` / `tsmap` / `tslog` | `jsq` / `jslog` / `jsprom` |

### Añadir uno nuevo

Crea o edita `snippets/<filetype>.json`:

```json
{
  "mi snippet": {
    "prefix": "myprefix",
    "body": ["linea uno", "linea dos $1", "fin ${2:default}"],
    "description": "qué hace"
  }
}
```

Para un **mismo snippet en varios filetypes** (p.ej. ts/tsx/js/jsx) sin duplicar archivos, agrega un `snippets/package.json` (estilo VSCode, blink lo lee):

```json
{
  "contributes": {
    "snippets": [
      { "language": ["typescript", "typescriptreact", "javascript"], "path": "./ts.json" }
    ]
  }
}
```

---

## ⌨️ Atajos principales (`<leader>` = espacio)

### Navegación LSP

| Atajo | Acción |
|---|---|
| `gd` | Ir a definición |
| `gD` | Ir a declaración |
| `gr` | Referencias |
| `gI` | Implementación |
| `gy` | Definición de tipo |
| `K` | Hover (documentación) |
| `gK` / `<C-k>` (insert) | Firma / ayuda |
| `<leader>ca` | Code action |
| `<leader>cr` | Renombrar símbolo |
| `<leader>cl` | Info del LSP (picker) |
| `<leader>cs` | Símbolos (Trouble) |

### Búsqueda y archivos (Snacks + Neo-tree)

| Atajo | Acción |
|---|---|
| `<leader>ff` | Buscar archivos |
| `<leader>fr` | Recientes |
| `<leader>fb` | Buffers |
| `<leader>sg` | Grep (buscar en texto) |
| `<leader>e` / `<leader>E` | Explorador (raíz / cwd) |
| `<leader>xx` | Diagnósticos (Trouble) |

### Edición

| Atajo | Acción |
|---|---|
| `s` / `S` | Saltar a cualquier sitio / por treesitter (Flash) |
| `gc` / `gcc` | Comentar / descomentar |
| `<leader>cf` | Formatear con LSP |
| `<leader>w` | Guardar |
| `<leader>qq` | Salir de todo |
| `<leader>cp` | Discord Presence |

### Completado (blink.cmp)

`<C-space>` abre el menú · `<C-n>`/`<C-p>` navegan · `<C-e>` cierra · `Tab` acepta y salta en snippets · `<S-Tab>` retrocede · `<C-y>` aceptar (estilo VSCode: `Tab`).

---

## 🛠 Personalizar (cómo seguir agregando)

- **Un LSP nuevo** → una línea en `lua/plugins/lsp.lua`: `gopls = {},` (Mason lo instala solo).
- **Un plugin** → crea `lua/plugins/mi-plugin.lua` devolviendo su spec (el import es automático).
- **Tocar algo que ya trae LazyVim** → mismo nombre de plugin + `optional = true` + `opts = {...}` (fusiona, no sobrescribe).
- **Extras grandes de golpe** → `:LazyExtras` (DAP, test, formateadores, más `lang.*`…).
- **Carpetas** cuando `lua/plugins/` crezca: los subdirectorios **deben contener `init.lua`** para que lazy.nvim los importe.
- **No editar** `lazy-lock.json` a mano: usa `:Lazy update` / `:Lazy restore`.

---

## 🔁 Actualizar / Rollback

```bash
# Actualizar plugins y fijar el nuevo snapshot
:Lazy update

# Volver a las versiones del repo
:Lazy restore
```

Antes de cambios grandes:

```bash
mv ~/.config/nvim ~/.config/nvim.bak-$(date +%Y%m%d-%H%M%S)   # backup instantáneo
```

---

## 🙏 Créditos

Construida sobre [LazyVim](https://github.com/LazyVim/LazyVim) · [lazy.nvim](https://github.com/folke/lazy.nvim) · [blink.cmp](https://github.com/Saghen/blink.cmp) · [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) · [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) · [Mason](https://github.com/mason-org/mason.nvim).

Licencia: [MIT](LICENSE).