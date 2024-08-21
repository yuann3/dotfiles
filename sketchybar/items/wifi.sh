#!/bin/bash

sketchybar --add item  ip_address right                              \
           --set       ip_address script="$PLUGIN_DIR/wifi.sh" \
                                  update_freq=30                     \
                                  padding_left=2                    \
                                  padding_right=5                    \
                                  background.border_width=0          \
                                  background.corner_radius=6         \
                                  background.height=24               \
           --subscribe ip_address wifi_change                        \
