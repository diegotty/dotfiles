return {
  "nvim-orgmode/orgmode",
  event = "VeryLazy",
  ft = { "org" },
  config = function()
    -- Setup orgmode
    require("orgmode").setup({
      org_agenda_use_time_grid = false,
      org_agenda_files = { "~/orgmode/**/*", "~/uni/2.1/**/*", "~/uni/2.2/**/*", "~/uni/3.1/**/*", "~/uni/3.2/**/*", "~/uni/4.1/**/*"},
      org_default_notes_file = "~/orgmode/refile.org",
      org_todo_keywords = { "LECTURE(l)", "TODO(t)", "COULDO(c)", "WORKINGON(w)", "EXAM", "|", "NOTDONE(n)", "DONE(d)", "EVENT(e)" },
      org_todo_keyword_faces = {
        EXAM = 'foreground red :weight bold :underline on',
      },
      org_todo_repeat_to_state = "LECTURE",
      win_split_mode = "vertical",
      win_border = "single",
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
