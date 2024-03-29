# Comprueba si Polybar está en ejecución
if pgrep -x "polybar" >/dev/null; then
    # Si Polybar está en ejecución, mata todos los procesos de Polybar
    pkill -x polybar
    bspc config top_padding 0
else
    # Si Polybar no está en ejecución, ejecuta el script de lanzamiento
    ~/.config/polybar/launch.sh &
    bspc config top_padding 40
fi
