# SSH Multi Tool
Ein Multifunktionswerkzeug für SSH, mit Unterstützung für [Port knocking](https://en.wikipedia.org/wiki/Port_knocking), [OpenVPN](https://en.wikipedia.org/wiki/OpenVPN) und [Unison](https://en.wikipedia.org/wiki/Unison_(file_synchronizer))!

Dieses Programm ist in Bash geschrieben und besteht im Grunde genommen nur aus einer ausführbaren Datei sowie den Profildateien, die in `~/.sshmultitool` gespeichert werden.

Es muss nicht kompiliert, sondern lediglich in einen Ordner, der in `$PATH` steht (z.B. `/usr/local/bin` oder `$HOME/bin`), kopiert werden. Dafür kann auch das `Makefile` (siehe **Installation**) verwendet werden.

## Funktionen
* Verbinden zu entfernten Rechnern via SSH
* Dateiaustausch via SCP, SFTP und SSHFS
* Aufbau von SSH-Tunneln
* Automatisches "Anklopfen" an einem mit knockd gesicherten Rechner
* Automatisches Verbinden mit einem OpenVPN-Server
* Profile (mehrere Server mit eigener Konfiguration können gespeichert werden)
* Synchronisation der Profildateien mit Unison
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

## Installation
Einfach das Skript, `sshmultitool`, in einen Ordner packen, der in der `$PATH`-Variable liegt, z.B. `/usr/local/bin` oder `$HOME/bin` (bei Debian und Ubuntu standardmäßig via .profile in der $PATH-Variable).

Stattdessen kann auch das `Makefile` verwendet werden.    
Dafür im Quellordner `make` ausführen. Dann wird, sofern nicht schon vorhanden, der Ordner `$HOME/bin` angelegt, das Skript dorthin kopiert, die Autovervollständigung in Bash eingerichtet sowie die Musterkonfiguration in `$HOME/.sshmultitool/sshmultitool.cfg.template` abgelegt.
