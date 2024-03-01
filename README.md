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

Quiero agradecer a gh0stzk por compartir su configuración de ncmpcpp y mpd, que adapté para mi propio uso. Puedes encontrar su trabajo original en los siguientes enlaces:

- [Configuración de MPD](https://github.com/gh0stzk/dotfiles/tree/master/config/mpd)
- [Configuración de Ncmpcpp](https://github.com/gh0stzk/dotfiles/tree/master/config/ncmpcpp)

## Temas Disponibles

Puedes elegir entre los siguientes temas ejecutando cualquiera de las siguientes líneas de comando:

- Dracula:

  wal --set Dracula

- Nord:

  wal --set Nord

- NordRed:

  wal --set NordRed

- Rose Pine:

  wal --set Rose-Pine

## Generación de Colores para GTK e Iconos con Oomox

Se puede generar colores para GTK e iconos con Oomox utilizando el siguiente script:

  ~/.config/bspwm/colorsGTK-Icons.sh

Este script usa una plantilla de Oomox ubicada en .cache/wal/oomox_lcars.

## Capturas de Pantalla
