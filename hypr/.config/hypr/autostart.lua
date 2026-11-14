-- Extra autostart processes.
-- o.launch_on_start("my-service")
o.exec_on_start(os.getenv("HOME") .. "/.config/hypr/scripts/dev-workflow.zsh")
