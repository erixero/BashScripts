#!/bin/bash

# Activa Seguridad
set -euo pipefail

# Source the variables file
source ../Variables/variables.sh

function status()
{
    # Lógica principal del script
    
    # Set the filename and backup filename
    service_name=$SERVICE_NAME

    # Save output to a file
    OUTPUT_OF_SERVICE=$(systemctl status $service_name)
    echo $OUTPUT_OF_SERVICE
}

status "$@"