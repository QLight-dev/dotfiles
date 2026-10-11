-- See https://wiki.hypr.land/Configuring/Basics/Monitors/

local omarchy_gdk_scale = 1
local omarchy_monitor_scale = 1

-- Intel GPU first, MS912X USB display second
hl.env("AQ_DRM_DEVICES", "/dev/dri/card1:/dev/dri/card0")

hl.env("GDK_SCALE", tostring(omarchy_gdk_scale))

-- Default monitor
hl.monitor({
    output = "",
    mode = "preferred",
    position = "auto",
    scale = omarchy_monitor_scale
})

-- MS912X USB display adapter
hl.monitor({
    output = "HDMI-A-2",
    mode = "1920x1080@60",
    position = "auto",
    scale = 1
})
