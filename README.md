# 💾 Klipper Konfigurations-Backup für svender3d

Dieses Repository dient als zentraler Speicherort für alle Konfigurationsdateien des 3D-Druckers, der mit der **Klipper**-Firmware betrieben wird. Es enthält die vollständige Einrichtung für Klipper, Moonraker und alle zugehörigen Makros, um eine schnelle und zuverlässige Wiederherstellung der Druckerfunktionalität zu gewährleisten.

## 🎯 Zweck

Der Hauptzweck dieses Backups ist die **Disaster Recovery**. Es ermöglicht:

* Schnelle Wiederherstellung der Konfiguration nach einer Neuinstallation des Host-Systems (z. B. Raspberry Pi).
* Sichere Speicherung aller Kalibrierungsdaten (Input Shaping, Bed Mesh) und kundenspezifischer Makros.
* Versionierung von Konfigurationsänderungen, um bei Problemen auf ältere, funktionierende Zustände zurückzugreifen.

---

## 📁 Repository-Struktur und Inhalt

Die Dateien sind thematisch in Unterverzeichnissen organisiert, was der üblichen Praxis in Klipper-Installationen (z. B. Mainsail/Fluidd) entspricht:

### Hauptkonfigurationsdateien

| Datei | Beschreibung |
| :--- | :--- |
| `printer.cfg` | Die zentrale Klipper-Konfigurationsdatei mit den Hardware-Definitionen. |
| `moonraker.conf` | Konfiguration des Moonraker API-Servers (Kommunikationsschicht). |
| `mainsail.cfg` | Spezifische Einstellungen und Makros für die Mainsail-Weboberfläche. |
| `macro.cfg` | Enthält benutzerdefinierte G-Code-Makros. |

### Makros & Skripte

| Datei / Ordner | Beschreibung |
| :--- | :--- |
| `std_macros/` | Standard-Makros, oft für allgemeine Vorgänge. |
| `start_end/` | Spezielle G-Code-Definitionen für den Druckstart und das Druckende. |
| `shutdown/` | Makros oder Skripte, die den Drucker oder das Host-System herunterfahren. |
| `autocommit.sh` | Ein Shell-Skript, das wahrscheinlich zur automatischen Erstellung und zum Commit dieses Backups verwendet wird. |

### Kalibrierung und Peripherie

| Ordner / Datei | Beschreibung |
| :--- | :--- |
| `ShakeTune_results/` | Gespeicherte Ergebnisse der Input Shaper Kalibrierung (Resonanzkompensation). |
| `bed_mesh/` | Gespeicherte Bed Mesh-Profile zur Kompensation von Unebenheiten im Druckbett. |
| `adxl/` | Konfigurationen im Zusammenhang mit der ADXL-Beschleunigungsmessung. |
| `probe/` | Konfigurationsdetails für den Messfühler (Probe) zur automatischen Bettnivellierung. |
| `crowsnest.conf` | Konfiguration für den Kameraserver Crowsnest. |
| `octoeverywhere.conf` | Konfiguration für den Fernzugriffsdienst OctoEverywhere. |

---

## 🚀 Wiederherstellung

Befolgen Sie diese Schritte, um die Konfiguration auf einem neuen oder frisch aufgesetzten Host-System wiederherzustellen:

1.  **Navigieren Sie zum Home-Verzeichnis:**
    ```bash
    cd ~
    ```
2.  **Klone das Repository:**
    ```bash
    git clone [https://github.com/Exulizer/svender3d_backup.git](https://github.com/Exulizer/svender3d_backup.git) klipper_config
    ```
    *(Annahme: Das Klipper Konfigurationsverzeichnis heißt `klipper_config`)*
3.  **Optional: Ausführen des Autocommit-Skripts (falls benötigt):**
    Wenn Sie möchten, dass das System zukünftige Änderungen automatisch sichert, stellen Sie sicher, dass das `autocommit.sh`-Skript ausgeführt werden kann und korrekt eingerichtet ist.
4.  **Starte Klipper und Moonraker neu** (oder den Host-Dienst), um die neuen Einstellungen zu laden.
