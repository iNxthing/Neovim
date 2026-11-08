# ⚡ Guía Esencial de Atajos para Neovim

> **Menos es más:** No necesitás memorizar 300 comandos para ser productivo. En Neovim, el **10% de los atajos resuelve el 90% de tu jornada**.
> 
> Esta hoja de referencia concentra los atajos clave pensados para un **workflow ágil, ergonómico y moderno**, aprovechando al máximo LazyVim, LSP, Treesitter y tus plugins personalizados.
> 
> - **Tecla Líder (`<leader>`):** `<Space>` (Barra espaciadora).
> - **Mapa exhaustivo:** Para consultar absolutamente todos los comandos registrados en tu instalación, revisá [KEYMAPS.md](KEYMAPS.md).

---

## 🧠 1. La Gramática de Vim (Conceptos > Código)

Antes de memorizar combinaciones, recordá cómo piensa Neovim: **Verbo + Modificador + Objeto de Texto**:

- **Verbos:** `c` (cambiar/change), `d` (borrar/delete), `y` (copiar/yank), `v` (seleccionar visualmente).
- **Modificadores:** `i` (dentro de/inner), `a` (alrededor de/around).
- **Objetos:** `w` (palabra), `"`, `'`, `(`, `{`, `[` (delimitadores), `p` (párrafo), `t` (tag HTML/XML).

> **Ejemplos prácticos:**
> - `ci"` → Borra el contenido dentro de las comillas y entra en modo Insert.
> - `da(` → Borra los paréntesis y todo su contenido.
> - `yip` → Copia todo el párrafo actual sin tener que seleccionarlo a mano.

---

## ⚡ 2. Movimiento y Saltos de Alta Velocidad

Olvidate de presionar `j` o `k` repetidas veces. Movete a cualquier punto visible en milisegundos.

| Atajo | Descripción | Por qué es clave |
| :--- | :--- | :--- |
| `s` + `2 letras` | **Flash Jump** | Escribí dos letras de cualquier palabra en pantalla y saltás directo con una tecla. |
| `S` | **Flash Treesitter** | Selecciona o salta semánticamente a nodos de código (funciones, objetos, bloques). |
| `<Tab>` / `<S-Tab>` | **Tabout** | Salta fuera de comillas, paréntesis o llaves en modo Insert sin tocar las flechas. |
| `%` | **Saltar a coincidencia** | Salta entre apertura y cierre de `{ }`, `( )`, `[ ]` o tags HTML. |
| `*` / `#` | **Buscar palabra bajo cursor** | Salta a la siguiente / anterior aparición de la palabra actual. |
| `<M-j>` / `<M-k>` | **Mover líneas** | Mueve la línea actual (o selección visual) arriba o abajo. |

---

## 🔍 3. Búsqueda y Navegación entre Archivos

Encontrá cualquier archivo, texto o buffer al instante con Snacks / Telescope.

| Atajo | Descripción | Uso diario |
| :--- | :--- | :--- |
| `<leader><Space>` | **Buscar archivos en el proyecto** | El fuzzy finder principal (`Find Files`). |
| `<leader>/` | **Grep en el proyecto** | Busca texto o regex en todos los archivos de tu repositorio. |
| `<leader>,` | **Cambiar entre buffers abiertos** | Salta entre pestañas/archivos que ya tenés en memoria. |
| `<leader>fr` | **Archivos recientes** | Abre el historial de archivos abiertos recientemente. |
| `<leader>fc` | **Configuración de Neovim** | Abre directamente los archivos de tu configuración. |
| `H` / `L` | **Buffer anterior / siguiente** | Cicla rápidamente entre los buffers abiertos en la barra superior. |

---

## 💻 4. El Núcleo de Desarrollo: LSP & Refactoring

Tu Neovim configurado como un IDE de primer nivel, pero sin la sobrecarga ni el consumo de recursos.

| Atajo | Descripción | Uso diario |
| :--- | :--- | :--- |
| `gd` | **Ir a Definición** | Salta a donde fue declarada la función, clase o variable. |
| `gr` | **Ver Referencias** | Lista todos los lugares del proyecto donde se usa el símbolo. |
| `gI` | **Ir a Implementación** | En interfaces o tipos abstractos, salta a la implementación concreta. |
| `K` | **Hover Docs / Tipo** | Muestra el popup con la firma, documentación y tipos del símbolo. |
| `<leader>ca` | **Code Actions** | Menú contextual de correcciones rápidas (imports automáticos, fixes del linter). |
| `<leader>cr` | **Renombrar símbolo (LSP Rename)** | Renombra la variable/función en **todos** los archivos del proyecto. |
| `<leader>cf` | **Formatear código** | Pasa el formateador configurado (Prettier, Black, Stylua, etc.). |

---

## 🩺 5. Diagnósticos, Errores y Calidad de Código

Navegá errores y advertencias de TypeScript, Vue, Python o Lua sin levantar las manos del teclado.

| Atajo | Descripción | Uso diario |
| :--- | :--- | :--- |
| `]d` / `[d` | **Siguiente / anterior diagnóstico** | Salta entre errores/advertencias en el archivo actual. |
| `<leader>xx` | **Panel de diagnósticos (Trouble)** | Abre una lista inferior interactiva con todos los errores del workspace. |
| `<leader>xX` | **Diagnósticos del buffer actual** | Filtra únicamente los errores del archivo que estás editando. |
| `[t` / `]t` | **Siguiente / anterior TODO comment** | Salta entre comentarios tipo `TODO:`, `FIXME:`, `BUG:`. |

---

## 📂 6. Exploración de Archivos

Dos herramientas complementarias según lo que necesites en el momento:

| Atajo | Herramienta | Cuándo usarlo |
| :--- | :--- | :--- |
| `<leader>e` | **Neo-tree** | Árbol lateral visual cuando necesitás ver la estructura completa de carpetas. |
| `<leader>-` | **Yazi (en archivo actual)** | File manager de terminal ultra veloz centrado en el archivo que estás editando. |
| `<leader>cw` | **Yazi (en directorio raíz)** | Abre Yazi posicionado en la raíz de tu proyecto. |
| `<C-Up>` | **Reanudar sesión de Yazi** | Vuelve a abrir Yazi en el estado en que lo dejaste. |

---

## 🛠️ 7. Manipulación Estructural & Edición Inteligente

| Atajo | Descripción | Ejemplo de uso |
| :--- | :--- | :--- |
| `<leader>m` | **TreeSJ (Split / Join)** | Convierte un array o parámetros de 1 línea a multi-línea (o viceversa). |
| `gcc` | **Comentar / Descomentar línea** | En modo Normal, comenta o descomenta la línea actual. |
| `gc` | **Comentar selección** | En modo Visual, comenta todo el bloque seleccionado. |
| `<C-s>` | **Guardar archivo** | Funciona tanto en modo Normal como Insert. |

---

## 🐙 8. Git y Control de Versiones

Integración completa para no salir nunca del editor al interactuar con Git.

| Atajo | Descripción | Uso diario |
| :--- | :--- | :--- |
| `<leader>gg` | **Lazygit** | Abre la TUI completa de Lazygit en un panel flotante. |
| `<leader>gB` | **Git Blame de línea** | Muestra quién, cuándo y en qué commit se modificó la línea actual. |
| `]h` / `[h` | **Siguiente / anterior Hunk** | Salta entre bloques modificados en el archivo según Git. |
| `<leader>ghp` | **Preview del Hunk** | Muestra el diff flotante del cambio actual sin necesidad de commit. |

---

## 🪟 9. Manejo de Ventanas, Splits y Terminal

| Atajo | Descripción | Uso diario |
| :--- | :--- | :--- |
| `<C-h>`, `<C-j>`, `<C-k>`, `<C-l>` | **Navegar entre ventanas** | Salta el foco a la ventana izquierda, abajo, arriba o derecha. |
| `<leader>w-` | **Split horizontal** | Divide la ventana actual horizontalmente. |
| `<leader>w\|` | **Split vertical** | Divide la ventana actual verticalmente. |
| `<leader>wd` | **Cerrar ventana** | Cierra la ventana activa. |
| `<leader>bd` | **Cerrar buffer** | Cierra el archivo actual sin romper la disposición de tus ventanas. |
| `<C-/>` | **Terminal flotante** | Abre o esconde una terminal en la raíz del proyecto. |

---

## ⚙️ 10. Controles Rápidos de UI y Entorno

| Atajo | Descripción |
| :--- | :--- |
| `<leader>ua` | **Toggle Mini.Animate** | Enciende o apaga las animaciones de cursor y scroll en caliente. |
| `<leader>uf` | **Toggle Auto-format** | Enciende o apaga el formateo automático al guardar (`format on save`). |
| `<leader>uw` | **Toggle Word Wrap** | Alterna el ajuste de línea en textos largos. |
| `<leader>cp` | **Toggle Discord Presence** | Enciende o apaga la presencia rica de Cord en Discord. |
