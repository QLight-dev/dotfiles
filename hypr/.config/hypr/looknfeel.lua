-- Polished & snappy Omarchy look'n'feel (Catppuccin Mocha)

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
}

local function rgba(hex, alpha)
  return "rgba(" .. hex .. (alpha or "ff") .. ")"
end

hl.config({
  general = {
    gaps_in = 4,
    gaps_out = 8,
    border_size = 2,

    -- Mauve -> Lavender Catppuccin Mocha gradient on active windows
    ["col.active_border"] = {
      colors = { rgba(mocha.mauve, "ee"), rgba(mocha.lavender, "ee") },
      angle = 45,
    },
    ["col.inactive_border"] = rgba(mocha.surface1, "aa"),

    -- Allow dragging borders with the mouse when needed
    resize_on_border = true,
    extend_border_grab_area = 15,
    hover_icon_on_border = true,

    -- Magnetic snapping for floating windows
    snap = {
      enabled = true,
      window_gap = 10,
      monitor_gap = 10,
    },

    layout = "dwindle",
  },

  decoration = {
    -- Smooth squircle corners (4.0 = Apple-style continuous curve)
    rounding = 12,
    rounding_power = 4.0,

    -- Focus dimming for inactive windows, popups, and scratchpads
    dim_inactive = true,
    dim_strength = 0.12,
    dim_modal = true,
    dim_special = 0.25,

    -- Subtle inner accent glow on the focused window only
    glow = {
      enabled = true,
      range = 10,
      render_power = 3,
      color = rgba(mocha.mauve, "28"),
      color_inactive = rgba(mocha.crust, "00"),
    },

    -- Frosted glass blur with color vibrancy and anti-banding grain
    blur = {
      enabled = true,
      size = 6,
      passes = 2,
      new_optimizations = true,
      vibrancy = 0.18,
      vibrancy_darkness = 0.2,
      noise = 0.015,
    },

    shadow = {
      enabled = true,
      range = 18,
      render_power = 3,
      color = rgba(mocha.crust, "cc"),
      color_inactive = rgba(mocha.crust, "66"),
    },
  },

  animations = {
    enabled = true,

    bezier = {
      "snappy, 0.16, 1, 0.3, 1",
      "smoothOut, 0.36, 0, 0.66, -0.56",
    },

    animation = {
      "windows, 1, 3.5, snappy, popin 85%",
      "windowsOut, 1, 2.5, smoothOut, popin 85%",
      "border, 1, 4, default",
      "borderangle, 1, 30, default, once",
      "fade, 1, 3, snappy",
      "workspaces, 1, 3.5, snappy, slide",
      "specialWorkspace, 1, 3.5, snappy, slidevert",
    },
  },

  dwindle = {
    preserve_split = true,
    smart_split = false,
    smart_resizing = true,
  },
})

os.execute("hyprctl setcursor Hexmask-Hypr 24")
