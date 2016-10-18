--- extends elixir.
-- @author [Alejandro Baez](https://twitter.com/a_baez)
-- @coypright 2016
-- @license MIT (see LICENSE)
-- @module elixir


local snippet_list = {
  ["do"] = "do\n\t%0\nend",
  def = "def%1(p) %2(name)(%3(arguments)) do%0",
  mod = "defmodule %1(name) do%0",
}

local function connecting()
  --- settings to enable on connect
  buffer.tab_width  = 2
  buffer.use_tabs   = false
end

local function snipping()
  snippets.elixir = snippet_list
end

return {
  connecting = connecting,
  snipping   = snipping
}
