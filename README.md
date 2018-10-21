# system-scripts
A bunch of system scripts that make my Linux life more bearable.

There are the following basic scripts that make it easier for me to manage and use my Linux system (currently Manjaro, but I
try to keep these scripts as distro agnostic as I can).

# package_manager_history.sh
This is a basic script that just echos whatever package management command I just ran into a text file that is stored on a
separately mounted volume.  That way, if I have to re-instal Linux or switch distros, I have a complete history of every
package that I ever installed.  Works with pacman and apt at the moment, but could easily be extended to just about any other
tool.

This tool is the underlying script that manages storing the history data. It is inteded to be called from wrapper scripts
that set the actual command (pacman or apt) that is to be run and the actual path to where the history files are to be stored.

Note: It is critical that this tool NOT have write permissions for anyone other than root, otherwise it is possible that
the code could be modified to run malware and the end-user (using sudo) would not be aware that running pacman (or apt) is
actually running unauthorized code.

# apt_history.sh
This script is a wrapper for package_manager_history.sh. It merely sets the command that that script will run (apt) and the
path where that script will store the history. On my system I have aliased apt to this script.

# pacman_history.sh
This script is a wrapper for package_manager_history.sh. It merely sets the command that that script will run (pacman) and the
path where that script will store the history. On my system I have aliased pacman to this script.

# bashrc_common
These are just my common bashrc commands (that I want set up for every user on the system).
