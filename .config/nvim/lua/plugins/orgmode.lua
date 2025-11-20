return {
  "nvim-orgmode/orgmode",
  event = "VeryLazy",
  ft = { "org" },
  config = function()
    -- Setup orgmode
    require("orgmode").setup({
      org_agenda_use_time_grid = false,
      org_agenda_files = { "~/diego/orgmode/**/*", "~/diego/uni/y2s1/**/*", "~/diego/uni/y2s2/**/*", "~/diego/uni/y3s1/**/*"},
      org_default_notes_file = "~/diego/orgmode/refile.org",
      org_todo_keywords = { "LECTURE(l)", "TODO(t)", "COULDO(c)", "WORKINGON(w)", "EXAM", "|", "NOTDONE(n)", "DONE(d)" },
      org_todo_keyword_faces = {
        EXAM = 'foreground red :weight bold :underline on',
      },
      org_todo_repeat_to_state = "LECTURE",
      win_split_mode = "auto",
      -- org_startup_folded = "showeverything",
      org_startup_folded = "content",
      org_hide_leading_stars = true,
      org_agenda_skip_scheduled_if_done = true,
      org_tags_column = 10,
      org_capture_templates = {
        t = { description = "task", template = "* TODO %?\n SCHEDULED: %T\n** notes " },
        n = { description = "note", template = "" },
      },
      mappings = {
        org = {
          org_timestamp_up = "+",
          org_timestamp_down = "-",
        },
      },
    })
  end,
}
