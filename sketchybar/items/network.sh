#!/bin/bash


sketchybar --add item  network.up right                              \
           --set       network.up script="$PLUGIN_DIR/network.sh"    \
                                  update_freq=5                     \
                                  padding_left=2                     \
                                  padding_right=8                    \
                                  background.border_width=0          \
                                  background.height=24               \
                                  icon=⇡                             \
                                                                     \
           --add item  network.down right                            \
           --set       network.down script="$PLUGIN_DIR/network.sh"  \
                               update_freq=5                        \
                               padding_left=2                       \
                               padding_right=8                       \
                               background.border_width=0             \
                               background.height=24                  \
                               icon=⇣                                \

