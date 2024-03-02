# BSPWM-Pywal

Este repositorio contiene mi configuración personalizada para el gestor de ventanas BSPWM, junto con Pywal para la generación automática de esquemas de colores basados en fondos de pantalla. Incluye plantillas para los temas de Dracula, Rose Pine y Nord, que se pueden aplicar fácilmente con Pywal incluye su integracion con:
- Bspwm
- Polybar
- Dunst
- Alacritty
- Programas QT con el uso del tema GTK
- Rofi
- Neovim (se genera un tema desde pywal pero la configuracion es enteramente de Nvchad)
- Ly Display Manager
- OOMOX - GTK (si realizas esto: [OOMOX](https://github.com/Mike-18awq/dotfiles?tab=readme-ov-file#generaci%C3%B3n-de-colores-para-gtk-e-iconos-con-oomox))
##### Nota: Ya tienes los temas gtk de todos los temas, eso último es solo x si quieres generar los tuyos propios

## Instalación

Para instalar y configurar BSPWM junto con Pywal, sigue estos pasos:

1. Clona este repositorio en tu directorio home:

    ```bash
    cd ~/ && git clone https://github.com/Mike-18awq/bspwm-pywal && cd ~/bspwm-pywal
    ```

2. Otorga permisos de ejecución al script de instalación:

    ```bash
    chmod +x install-bspwm.sh
    ```

3. Ejecuta el script de instalación:

    ```bash
    ./install-bspwm.sh
    ```

## Agradecimientos

Quiero agradecer a gh0stzk por compartir su configuración de ncmpcpp y mpd las cuales "robé" xd, y le cambie pocas cosas que adapté para mi propio uso. Puedes encontrar su trabajo original en los siguientes enlaces:

- [Configuración de MPD](https://github.com/gh0stzk/dotfiles/tree/master/config/mpd)
- [Configuración de Ncmpcpp](https://github.com/gh0stzk/dotfiles/tree/master/config/ncmpcpp)

## Temas Disponibles

Puedes elegir entre los siguientes temas ejecutando cualquiera de las siguientes líneas en la terminal:
- Catppuccin:

  ```bash
  wal --set Catppuccin
  ```

- Dracula:

  ```bash
  wal --set Dracula
  ```

- Everforest:

  ```bash
  wal --set Everforest
  ```

- Gruvbox:

  ```bash
  wal --set Gruvbox
  ```

- Monokai:

  ```bash
  wal --set Monokai
  ```

- Nord:

  ```bash
  wal --set Nord
  ```

- NordRed:

  ```bash
  wal --set NordRed
  ```

- Rose Pine:

  ```bash
  wal --set Rose-Pine
  ```

  
## Generación de Colores para GTK e Iconos con Oomox
##### Nota:
Si deseas usar Oomox para generar colores para GTK e iconos, asegúrate de descomentar las líneas 67, 68 y 69 en el archivo [install-bspwm.sh](https://github.com/Mike-18awq/dotfiles/blob/main/install-bspwm.sh) antes de ejecutar el script O también puedes ejecutarlas en ese orden por separado en una terminal. Estas líneas corresponden a la instalación de Oomox. Si no las descomentas, Oomox no se instalará y el script de instalación omitirá este paso.
    
- Puedes generar tus colores para GTK e iconos a partir de tus propias plantillas de pywal con Oomox utilizando el siguiente script:

  ```bash
      ~/.config/bspwm/colorsGTK-Icons.sh
  ```

Este script usa una plantilla de Oomox ubicada en .cache/wal/oomox_lcars.

# Colors neovim
- Si deseas usar un tema q use los colores de pywal en Neovim - Nvchad tienes q realizar estos pasos (solo lo tienes q hacer la primera vez):
  1. Crear acceso directo de la plantilla generada x pywal en la direccion de los temas de Nvchad

    ```bash
    ln -s ~/.cache/wal/NvchadWal.lua ~/.local/share/nvim/lazy/base46/lua/base46/themes/pywal.lua
    sed -i '8s/.*/  theme = "pywal",/' ~/.config/nvim/lua/custom/chadrc.lua
    sed -i '9s/.*/  theme_toggle = { "pywal", "pywal" },/' ~/.config/nvim/lua/custom/chadrc.lua
    sed -i "66i\---| \\'\"pywal\"\\';" ~/.local/share/nvim/lazy/ui/nvchad_types/themes.lua
    echo "---@field pywal ThemeTable # Changes for pywal theme" ~/.local/share/nvim/lazy/ui/nvchad_types/themes.lua
    ```
    
  2. Entrar a neovim y apretar
             <td><kbd>Space</kbd> + <kbd>t</kbd> + <kbd>h</kbd></td>
             
  2. Seleccionar "pywal"
    
## Keybindings

<table>
  <tr>
    <th>Teclas</th>
    <th>Acción</th>
  </tr>
  <tr>
    <td><kbd>super</kbd> + <kbd>Return</kbd></td>
    <td>Alacritty</td>
  </tr>
  <tr>
    <td><kbd>super</kbd> + <kbd>d</kbd></td>
    <td>Abre Rofi para lanzar programas</td>
  </tr>
  <tr>
    <td><kbd>super</kbd> + <kbd>ctrl</kbd> + <kbd>d</kbd></td>
    <td>Muestra las ventanas abiertas en Rofi</td>
  </tr>
  <tr>
    <td><kbd>super</kbd> + <kbd>shift</kbd> + <kbd>d</kbd></td>
    <td>Muestra las sesiones SSH disponibles en Rofi</td>
  </tr>
  <tr>
    <td><kbd>super</kbd> + <kbd>Escape</kbd></td>
    <td>Recarga la configuración de SXHKD</td>
  </tr>
  <tr>
    <td><kbd>super</kbd> + <kbd>alt</kbd> + <kbd>q</kbd></td>
    <td>Cierra BSPWM</td>
  </tr>
  <tr>
    <td><kbd>super</kbd> + <kbd>alt</kbd> + <kbd>r</kbd></td>
    <td>Reinicia BSPWM</td>
  </tr>
  <tr>
    <td><kbd>super</kbd> + <kbd>q</kbd></td>
    <td>Cierra la ventana actual</td>
  </tr>
  <tr>
    <td><kbd>super</kbd> + <kbd>shift</kbd> + <kbd>q</kbd></td>
    <td>Mata la ventana actual</td>
  </tr>
  <tr>
    <td><kbd>super</kbd> + <kbd>m</kbd></td>
    <td>Alterna entre el diseño de mosaico y monocle</td>
  </tr>
  <tr>
    <td><kbd>XF86MonBrightnessUp</kbd></td>
    <td>Aumenta el brillo en 5%</td>
  </tr>
  <tr>
    <td><kbd>XF86MonBrightnessDown</kbd></td>
    <td>Disminuye el brillo en 5%</td>
  </tr>
  <tr>
    <td><kbd>super</kbd> + <kbd>w</kbd></td>
    <td>Firefox</td>
  </tr>
  <tr>
    <td><kbd>super</kbd> + <kbd>n</kbd></td>
    <td>Nemo</td>
  </tr>
  <tr>
    <td><kbd>super</kbd> + <kbd>a</kbd></td>
    <td>Flameshot</td>
  </tr>
</table>


### Dracula
![](https://github.com/Mike-18awq/dotfiles/blob/main/Dracula1.png)
![](https://github.com/Mike-18awq/dotfiles/blob/main/Dracula2.png)
![](https://github.com/Mike-18awq/dotfiles/blob/main/Dracula3.png)

### Nord
![](https://github.com/Mike-18awq/dotfiles/blob/main/Nord1.png)
![](https://github.com/Mike-18awq/dotfiles/blob/main/Nord2.png)
![](https://github.com/Mike-18awq/dotfiles/blob/main/Nord3.png)

### NordRed
![](https://github.com/Mike-18awq/dotfiles/blob/main/NordRed1.png)
![](https://github.com/Mike-18awq/dotfiles/blob/main/NordRed2.png)
![](https://github.com/Mike-18awq/dotfiles/blob/main/NordRed3.png)

### Rose Pine
![](https://github.com/Mike-18awq/dotfiles/blob/main/RosePine1.png)
![](https://github.com/Mike-18awq/dotfiles/blob/main/RosePine2.png)
![](https://github.com/Mike-18awq/dotfiles/blob/main/RosePine3.png)
