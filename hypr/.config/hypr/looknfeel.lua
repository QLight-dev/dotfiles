local mocha = {
  crust    = "11111b",
  mantle   = "181825",
  base     = "1e1e2e",
  surface0 = "313244",
  surface1 = "45475a",
  surface2 = "585b70",
  lavender = "b4befe",
  blue     = "89b4fa",
  sapphire = "74c7ec",
  mauve    = "cba6f7",
  pink     = "f5c2e7",
  peach    = "fab387",
}

local function rgba(hex, alpha)
  return "rgba(" .. hex .. (alpha or "ff") .. ")"
end

hl.config({
  general = {
    gaps_in = 4,
    gaps_out = 8,
    border_size = 2,

    ["col.active_border"] = {
      colors = {
        rgba(mocha.mauve, "f5"),
        rgba(mocha.pink, "f5"),
        rgba(mocha.lavender, "f5"),
        rgba(mocha.sapphire, "f5"),
        rgba(mocha.mauve, "f5"), 
      },
      angle = 45,
    },
    ["col.inactive_border"] = rgba(mocha.surface1, "99"),

    resize_on_border = true,
    extend_border_grab_area = 15,
    hover_icon_on_border = true,

    snap = {
      enabled = true,
      window_gap = 10,
      monitor_gap = 10,
    },

    layout = "dwindle",
  },

  decoration = {
    rounding = 12,
    rounding_power = 4.0,

    dim_inactive = true,
    dim_strength = 0.12,
    dim_modal = true,
    dim_special = 0.25,

    glow = {
      enabled = true,
      range = 10,
      render_power = 3,
      color = rgba(mocha.mauve, "28"),
      color_inactive = rgba(mocha.crust, "00"),
    },

    blur = {
      enabled = true,
      size = 6,
      passes = 2,
      new_optimizations = true,
      vibrancy = 0.18,
vibrancy_darkness = 0.2,
      noise = 0.015,
    },
  },

  animations = {
    enabled = true,

    bezier = {
      "snappy, 0.16, 1, 0.3, 1",
      "smoothOut, 0.36, 0, 0.66, -0.56",
      "overshot, 0.05, 0.9, 0.1, 1.05",
      "linear, 0.0, 0.0, 1.0, 1.0",
    },

    animation = {
      "windows, 1, 3.5, overshot, popin 85%",
      "windowsOut, 1, 2.5, smoothOut, popin 85%",
      "windowsMove, 1, 3.5, snappy",
      "border, 1, 4, default",
      "borderangle, 1, 35, linear, loop",
      "fade, 1, 3, snappy",
      "fadeDim, 1, 3, snappy",
      "layers, 1, 2.5, snappy, popin 90%",
      "layersOut, 1, 2, smoothOut, popin 90%",
      "workspaces, 1, 3.5, snappy, slide",
      "specialWorkspace, 1, 3.5, snappy, slidevert",
    },
  },

  dwindle = {
    preserve_split = true,
    smart_split = false,
    smart_resizing = true,
  },

  misc = {
    disable_hyprland_logo = true,
    disable_splash_rendering = true,
    animate_manual_resizes = true,
  },

})
hl.window_rule({
  name = "frosted-terminals",
  match = { class = "^(foot|com\\.mitchellh\\.ghostty|kitty|Alacritty)$" },
  opacity = "0.90 0.82",
})

hl.window_rule({
  name = "opaque-media",
  match = { class = "^(mpv|vlc|imv)$" },
  opaque = true,
  no_dim = true,
})

hl.window_rule({
  name = "opaque-pip",
  match = { title = "^(Picture-in-Picture)$" },
  opaque = true,
  no_dim = true,
})

hl.window_rule({
  name = "floating-peach-border",
  match = { float = true },
  border_color = rgba(mocha.peach, "ee"),
})

hl.layer_rule({
  name = "omarchy-shell-blur",
  match = { namespace = "^(quickshell|omarchy.*)$" },
  blur = true,
  ignore_alpha = 0.2,
})
os.execute("hyprctl setcursor Hexmask-Hypr 24")
