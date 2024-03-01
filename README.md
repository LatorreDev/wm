# BSPWM-Pywal

Este repositorio contiene mi configuración personalizada para el gestor de ventanas BSPWM, junto con Pywal para la generación automática de esquemas de colores basados en fondos de pantalla. Incluye plantillas para los temas de Dracula, Rose Pine y Nord, que se pueden aplicar fácilmente con Pywal.

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

Puedes elegir entre los siguientes temas ejecutando cualquiera de las siguientes líneas de comando:
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
###### Nota: Si deseas usar Oomox para generar colores para GTK e iconos, asegúrate de descomentar las líneas 66, 67 y 68 en el archivo `install-bspwm.sh` antes de ejecutar el script. Estas líneas corresponden a la instalación de Oomox. Si no las descomentas, Oomox no se instalará y el script de instalación omitirá este paso.
    
- Puedes generar tus colores para GTK e iconos a partir de tus propias plantillas de pywal con Oomox utilizando el siguiente script:
  ```bash
  ~/.config/bspwm/colorsGTK-Icons.sh
  ```
Este script usa una plantilla de Oomox ubicada en .cache/wal/oomox_lcars.

## Capturas de Pantalla
### Dracula
![](https://github.com/Mike-18awq/bspwm-pywal/blob/main/Dracula1.png)
![](https://github.com/Mike-18awq/bspwm-pywal/blob/main/Dracula2.png)
![](https://github.com/Mike-18awq/bspwm-pywal/blob/main/Dracula3.png)

### Nord
![](https://github.com/Mike-18awq/bspwm-pywal/blob/main/Nord1.png)
![](https://github.com/Mike-18awq/bspwm-pywal/blob/main/Nord2.png)
![](https://github.com/Mike-18awq/bspwm-pywal/blob/main/Nord3.png)

### NordRed
![](https://github.com/Mike-18awq/bspwm-pywal/blob/main/NordRed1.png)
![](https://github.com/Mike-18awq/bspwm-pywal/blob/main/NordRed2.png)
![](https://github.com/Mike-18awq/bspwm-pywal/blob/main/NordRed3.png)

### Rose Pine
![](https://github.com/Mike-18awq/bspwm-pywal/blob/main/RosePine1.png)
![](https://github.com/Mike-18awq/bspwm-pywal/blob/main/RosePine2.png)
![](https://github.com/Mike-18awq/bspwm-pywal/blob/main/RosePine3.png)
