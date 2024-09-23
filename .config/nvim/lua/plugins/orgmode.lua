return {
  'nvim-orgmode/orgmode',
  event = 'VeryLazy',
  ft = { 'org' },
  config = function()
    -- Setup orgmode
    require('orgmode').setup({
      org_agenda_files = {'~/diego/uni/y2s1/**/*', '~/diego/uni/y2s2/**/*'},
      org_default_notes_file = '~/diego/orgmode/notes/refile.org',
      org_todo_keywords = {'LECTURE(l)', 'TODO(t)', 'COULDO(c)', 'WORKINGON(w)', 'NOTDONE(n)', 'DONE(d)'},
      org_todo_repeat_to_state = "LECTURE",
      win_split_mode = "auto",
      org_startup_folded = "showeverything",
      org_hide_leading_stars = true,
      org_agenda_skip_scheduled_if_done = true,
      org_capture_templates = {
        t = {description = 'task', template = '* TODO %?\n SCHEDULED: %T\n** notes \n\n %u'},
        n = {description = 'note', template = ''},
      },
    })

  end,
}
