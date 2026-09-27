hl.workspace_rule({ workspace = "1", monitor = "DP-1", persistent = true, default_name = "1" })
hl.workspace_rule({ workspace = "2", monitor = "DP-1", persistent = true, default_name = "2" })
hl.workspace_rule({ workspace = "3", monitor = "DP-1", persistent = true, default_name = "3" })
hl.workspace_rule({ workspace = "4", monitor = "DP-1", persistent = true, default_name = "4" })
hl.workspace_rule({ workspace = "5", monitor = "DP-1", persistent = true, default_name = "5" })

hl.window_rule({
    name  = "suppress-maximize-events",
    match = { class = ".*" },
    suppress_event = "maximize",
})

hl.window_rule({
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

hl.window_rule({
    match = { class = "dev.noctalia.Noctalia" },
    float = true,
    size = { 1080, 920 },
})

hl.layer_rule({
  name = "noctalia",
  match = {
    namespace = "^noctalia-(bar-.+|notification|dock|panel|attached-panel|osd|window-switcher)$",
  },
  no_anim = true,
  ignore_alpha = 0.5,
  blur = true,
  blur_popups = true,
})
