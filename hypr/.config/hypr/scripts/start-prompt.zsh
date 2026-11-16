#!/usr/bin/env zsh

sleep 1

local choice=$(print -l "Start dev workflow" "Update Omarchy" "Do nothing" | fuzzel --dmenu -p "Action? ")

if [[ "$choice" == "Update Omarchy" ]]; then
    hyprctl dispatch 'hl.dsp.exec_cmd("ghostty -e omarchy update")'
    exit 0
elif [[ "$choice" != "Start dev workflow" ]]; then
    exit 0
fi

wait_for_class() {
    local class_regex="$1"
    local initial_matches="$2"
    for i in {1..60}; do
        local current_matches=$(hyprctl clients | grep -ciE "class:.*$class_regex")
        if (( current_matches > initial_matches )); then
            sleep 0.3
            return 0
        fi
        sleep 0.2
    done
}

hyprctl dispatch 'hl.dsp.focus({ workspace = "1" })'
local ghostty_count=$(hyprctl clients | grep -ciE "class:.*ghostty")
hyprctl dispatch 'hl.dsp.exec_cmd("ghostty")'
wait_for_class "ghostty" "$ghostty_count"

hyprctl dispatch 'hl.dsp.focus({ workspace = "2" })'
local zen_count=$(hyprctl clients | grep -ciE "class:.*zen")
hyprctl dispatch 'hl.dsp.exec_cmd("zen-browser")'
wait_for_class "zen" "$zen_count"

local pink_noise="$HOME/Downloads/Pink Noise Black Screen Sleep, Focus, Study 10 Hours_1080p.mp4"
hyprctl dispatch 'hl.dsp.focus({ workspace = "3" })'
hyprctl dispatch "hl.dsp.exec_cmd(\"mpv --loop-file=inf '$pink_noise'\")"l.dsp.exec_cmd(\"mpv --loop-file=inf '$pink_noise'\")"
