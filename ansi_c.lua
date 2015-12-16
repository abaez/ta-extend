--- ansi_c extensions
-- @author [Alejandro Baez](https://twitter.com/a_baez)
-- @coypright 2015
-- @license MIT (see LICENSE)
-- @module ansi_c

local function connecting()
  --- settings to enable on connect
  buffer.tab_width  = 2
  buffer.use_tabs   = false
end

local function snipping()
  snippets.ansi_c = require("linux.snippets")
end

return {
  connecting = connecting,
  snipping = snipping
}
