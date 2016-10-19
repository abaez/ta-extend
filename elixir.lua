--- extends elixir.
-- @author [Alejandro Baez](https://twitter.com/a_baez)
-- @coypright 2016
-- @license MIT (see LICENSE)
-- @module elixir


local snipping = {
  true,

  ["do"] = "do\n\t%0\nend",
  def = "def%1(p) %2(name)(%3(arguments)) do%0",
  mod = "defmodule %1(name) do%0",
  fn = "fn %1(param) -> %2(body) end%0",
  rec = "receive do\n\t%3(body)\n%1(after\n\t%2(timeout))\nend%0"
}

local function connecting()
  --- settings to enable on connect
  buffer.tab_width  = 2
  buffer.use_tabs   = false
end

return {
  connecting = connecting,
  snipping   = snipping
}
