#!/bin/bash

# Ordner wechseln
cd ~/printer_data/config

# Alle Änderungen hinzufügen
git add .

# Commit mit aktuellem Datum erstellen
current_date=$(date +"%Y-%m-%d %H:%M:%S")
git commit -m "Auto Backup: $current_date"

# Hochladen
git push origin main
