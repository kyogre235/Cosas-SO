#!/bin/bash

# Función para mostrar ayuda
usage() {
    echo "Uso: $0 [-g nombre_archivo] <dominio/IP>"
    echo "  -g <nombre>   Especifica el nombre del archivo de salida (por defecto log.txt)"
    exit 1
}

# Valores por defecto
OUTPUT_FILE="log.txt"

# Parsear argumentos
while getopts "g:" opt; do
    case $opt in
        g) OUTPUT_FILE="$OPTARG";;
        *) usage;;
    esac
done
shift $((OPTIND - 1))

# Verificar que se proporcionó un dominio o IP
if [ -z "$1" ]; then
    usage
fi
TARGET="$1"

# Iniciar archivo de log
echo "Pentesting Report for $TARGET" > "$OUTPUT_FILE"
echo "Fecha de escaneo: $(date)" >> "$OUTPUT_FILE"
echo "============================" >> "$OUTPUT_FILE"

# WHOIS para obtener información de dominio
whois "$TARGET" >> "$OUTPUT_FILE"
echo "============================" >> "$OUTPUT_FILE"
# Comprobar conectividad y latencia
ping -c 4 "$TARGET" >> "$OUTPUT_FILE"
echo "============================" >> "$OUTPUT_FILE"
# Obtener la IP pública y sus segmentos
echo "IP Pública y segmentos: " >> "$OUTPUT_FILE"
host "$TARGET" >> "$OUTPUT_FILE"
echo "============================" >> "$OUTPUT_FILE"
echo "Registros IPv4 e IPv6: " >> "$OUTPUT_FILE"
dig A "$TARGET" +short >> "$OUTPUT_FILE"
dig AAAA "$TARGET" +short >> "$OUTPUT_FILE"
echo "============================" >> "$OUTPUT_FILE"
echo "Registros reversos: " >> "$OUTPUT_FILE"
dig -x "$TARGET" +short >> "$OUTPUT_FILE"
echo "============================" >> "$OUTPUT_FILE"
echo "Ruta y saltos al dominio: " >> "$OUTPUT_FILE"
traceroute "$TARGET" >> "$OUTPUT_FILE"
echo "============================" >> "$OUTPUT_FILE"
echo "Enumeración de servidores DNS: " >> "$OUTPUT_FILE"
dig NS "$TARGET" +short >> "$OUTPUT_FILE"
echo "============================" >> "$OUTPUT_FILE"
echo "Escaneo de puertos con nmap: " >> "$OUTPUT_FILE"
nmap -Pn -sV "$TARGET" >> "$OUTPUT_FILE"
echo "============================" >> "$OUTPUT_FILE"
# script que busca si hay vulnerabilidades registradas en los servicios encontrados por nmap
echo "============================" >> "$OUTPUT_FILE"


echo "Pentesting finalizado. Resultados guardados en $OUTPUT_FILE"

