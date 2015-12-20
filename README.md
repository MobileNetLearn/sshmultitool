# SSH Multi Tool
Ein Multifunktionswerkzeug für SSH, mit Unterstützung für [Port knocking](https://en.wikipedia.org/wiki/Port_knocking), [OpenVPN](https://en.wikipedia.org/wiki/OpenVPN) und [Unison](https://en.wikipedia.org/wiki/Unison_(file_synchronizer))!

## Funktionen
* Verbinden zu entfernten Rechnern via SSH
* Dateiaustausch via SCP, SFTP und SSHFS
* Aufbau von SSH-Tunneln
* Automatisches "Anklopfen" an einem mit knockd gesicherten Rechner
* Automatisches Verbinden mit einem OpenVPN-Server
* Profile (mehrere Server mit eigener Konfiguration können gespeichert werden)
* Zwei Interfaces: ncurses (semigrafisch) und command-line
* Automatische Updates

## Voraussetzungen
* Bash
* OpenSSH sowie sshfs (optional, aber empfohlen)
* Texteditor (Konsole oder grafisch, frei nach Belieben)
* Optional: OpenVPN, Unison

### Unterstützte Betriebssysteme
* GNU/Linux (getestet auf Debian, Ubuntu und Arch)
* Mac OS X (mit MacPorts)
* Windows (mit Cygwin)

