--- extending settings for languages.
-- @author [Alejandro Baez](https://twitter.com/a_baez)
-- @copyright 2015
-- @license MIT (see LICENSE)
-- @module init

local EX = "extend."

local check = {
  ansi_c = true,
  cpp    = true,
  go     = true,
  lua    = true,
  perl   = true,
  python = true,
  yaml   = true,
}

events.connect(events.LEXER_LOADED, function(lang)
  if not check[lang] then return end

  local loaded = {}

  loaded[lang] = require(EX .. lang)

  if type(snippets) == 'table' then
    snippets[lang] = loaded[lang].snippets
  end
end)
