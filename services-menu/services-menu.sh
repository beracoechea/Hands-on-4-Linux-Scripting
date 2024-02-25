#!/bin/bash

# Función para listar el contenido de un fichero
listar_contenido() {
    read -p "Ingrese la ruta absoluta al archivo o carpeta: " ruta
    ls "$ruta"
}

# Función para crear un archivo de texto con una línea de texto
crear_archivo() {
    read -p "Ingrese la cadena de texto a almacenar en el archivo: " texto
    echo "$texto" > nuevo_archivo.txt
    echo "Archivo creado con éxito."
}

# Función para comparar dos archivos de texto
comparar_archivos() {
    read -p "Ingrese el nombre del primer archivo: " archivo1
    read -p "Ingrese el nombre del segundo archivo: " archivo2
    diff "$archivo1" "$archivo2"
}

# Función para mostrar el uso de awk
uso_awk() {
    echo "Uso de awk: awk 'patrón {acción}' archivo"
    echo "Ejemplo: awk '/patrón/ {print \$1}' archivo.txt"
}

# Función para mostrar el uso de grep
uso_grep() {
    echo "Uso de grep: grep 'patrón' archivo"
    echo "Ejemplo: grep 'palabra' archivo.txt"
}

# Mostrar menú de opciones
while true; do
    echo "==== Menú de Servicios ===="
    echo "1. Listar contenido de un fichero o carpeta"
    echo "2. Crear un archivo de texto con una línea de texto"
    echo "3. Comparar dos archivos de texto"
    echo "4. Mostrar el uso de awk"
    echo "5. Mostrar el uso de grep"
    echo "6. Salir"

    read -p "Seleccione una opción: " opcion

    case $opcion in
        1) listar_contenido ;;
        2) crear_archivo ;;
        3) comparar_archivos ;;
        4) uso_awk ;;
        5) uso_grep ;;
        6) echo "Saliendo del programa."; exit ;;
        *) echo "Opción inválida. Inténtelo de nuevo." ;;
    esac
done