#!/bin/bash

# Activa Seguridad
set -euo pipefail

# Source the variables file
source ../../Variables/variables.sh

function main() 
{
    # Lógica principal del script
    
    # Set the actual date
    timestamp=$(date '+%Y-%m-%d_%H-%M-%S')

    # Set the filename and backup filename
    file_name=$FILE_NAME
    file_path=$FILE_PATH

    # Backup File Name
    backup_file_name="$file_name$timestamp"
    backup_file="$file_path$backup_file_name"

    # File + Path
    file="$file_path$file_name"

    # Copy the file to the backup filename
    cp "$file" "$backup_file"

    # Output success message
    echo "Backup of $file_name saved as $backup_file_name"
}

main "$@"