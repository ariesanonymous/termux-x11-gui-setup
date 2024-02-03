#!/bin/bash

apt update && apt upgrade && pkg install x11-repo && pkg install termux-x11-nightly && pkg install xfce4 && echo 'termux-x11 :1 -xstartup "xfce4-session"' > xfce4.sh && chmod +x xfce4.sh

echo "Removing setup.sh file....."

# Start a background process that waits for a short time and then removes the script
(sleep 2 && rm -- "$0") &

# Exit the script
exit
