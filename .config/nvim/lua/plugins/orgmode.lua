return {
  'nvim-orgmode/orgmode',
  event = 'VeryLazy',
  ft = { 'org' },
  config = function()
    -- Setup orgmode
    require('orgmode').setup({
      org_agenda_files = {'~/diego/orgmode/**/*', '~/diego/uni/uni.org'},
      org_default_notes_file = '~/diego/orgmode/notes/refile.org',
      org_todo_keywords = {'LECTURE(l)', 'TODO(t)', 'COULDO(c)', 'WORKINGON(w)', 'NOTDONE(n)', 'DONE(d)'},
      org_todo_repeat_to_state = "LECTURE",
      win_split_mode = "vertical",
      win_border = "single",
    })

  end,
}
