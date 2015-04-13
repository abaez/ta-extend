--- ansi_c extensions
-- @author [Alejandro Baez](https://twitter.com/a_baez)
-- @coypright 2015
-- @license MIT (see LICENSE)
-- @module ansi_c

events.connect(events.LEXER_LOADED, function(lang)
  if lang ~= 'ansi_c' then return end

  --- settings to enable on connect
  buffer.tab_width  = 2
  buffer.use_tabs   = false
end)

if type(snippets) == 'table' then
  snippets.ansi_c = require("linux.snippets")
end

return {}
