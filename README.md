# SSH Multi Tool
Ein Multifunktionswerkzeug für SSH, mit Unterstützung für [Port knocking](https://en.wikipedia.org/wiki/Port_knocking), [OpenVPN](https://en.wikipedia.org/wiki/OpenVPN) und [Unison](https://en.wikipedia.org/wiki/Unison_(file_synchronizer))!

Dieses Programm ist in Bash geschrieben und besteht im Grunde genommen nur aus einer ausführbaren Datei, einem Bash-Skript, sowie den Profildateien, die in `~/.sshmultitool` gespeichert werden.    
Das Skript verwendet die Programme des [OpenSSH-Pakets](http://www.openssh.com) sowie [knockd](https://github.com/jvinet/knock). Beide Softwarepakete sollten in allen größeren GNU/Linux-Distributionen enthalten sein.

Das Programm muss nicht kompiliert, sondern lediglich in einen Ordner, der in `$PATH` steht (z.B. `/usr/local/bin` oder `$HOME/bin`), kopiert werden. Dafür kann auch das `Makefile` (siehe [Installation](#installation)) verwendet werden.

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
### Automatisch
```
git clone https://github.com/emkay443/sshmultitool.git    
cd sshmultitool    
make
```

Führe `sudo make install` statt `make` aus, wenn Du das Programm systemweit, in `/usr/local/bin`, installieren willst.    
Wenn Du zusätzlich Autovervollständigung in Bash haben möchtest, führe zusätzlich `make bashcompletion` aus.

### Manuell
`sshmultitool` [herunterladen](https://raw.githubusercontent.com/emkay443/sshmultitool/master/sshmultitool), ausführbar machen (`chmod +x sshmultitool`) und in einen Ordner legen, der in der `$PATH`-Variable liegt, z.B. `/usr/local/bin` oder `$HOME/bin` (bei Debian und Ubuntu standardmäßig via `$HOME/.profile` in der `$PATH`-Variable).

## Lizenz
SSH Multi Tool steht unter der [GNU General Public Licsense Version 3](https://www.gnu.org/licenses/gpl-3.0.de.html) und ist somit [freie Software](https://fsfe.org/about/basics/freesoftware.de.html).    
Das heißt, Sie dürfen das Programm frei verwenden, verändern und weiterverteilen, solange Sie die Lizenz beibehalten.    
Zudem darf dieses Programm nicht in einem Paket mit proprietärer Software verteilt werden, da das die Grundsätze von freier Software ad absurdum führt.

Zusätzlich wäre es wünschenswert, wenn Sie stets die originalen Autoren dieses Programms erwähnen bzw. die Nennungen im Code des Skripts beibehalten.

Eine Verwendung für militärische oder sonstige Zwecke, die die freiheitliche Grundordnung oder Menschenleben, mit welcher Begründung auch immer, bedrohen, lehne ich persönlich strikt ab, verbieten kann ich es Ihnen aber nicht.
