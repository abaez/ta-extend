--- ansi_c extensions
-- @author [Alejandro Baez](https://twitter.com/a_baez)
-- @coypright 2015
-- @license MIT (see LICENSE)
-- @module ansi_c

--- settings to enable on connect
buffer.tab_width  = 2
buffer.use_tabs   = false

local snippets = require("linux.snippets")

return {
  snippets = snippets
}
