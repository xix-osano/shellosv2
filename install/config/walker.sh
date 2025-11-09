#!/bin/bash

# Create pacman hook to restart walker after updates
sudo mkdir -p /etc/pacman.d/hooks
sudo tee /etc/pacman.d/hooks/walker-restart.hook > /dev/null << EOF
[Trigger]
Type = Package
Operation = Upgrade
Target = walker
Target = walker-debug

[Action]
Description = Restarting Walker services after system update
When = PostTransaction
Exec = $SHELLOS_PATH/bin/shellos-restart-walker
EOF
