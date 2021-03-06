--- lua extensions
-- @author [Alejandro Baez](https://twitter.com/a_baez)
-- @coypright 2015
-- @license MIT (see LICENSE)
-- @module lua

local snipping = {
  true,

  -- loops
  fori = "for %1(k) in %2(iterator) do\n\t%0\nend",
  forp = "for %1(k), %2(v) in %3(i)pairs(%4(table)) do\n\t%0\nend",
  ["for"] = "for %1(i) = %2(1), %3(10)%4(, -1) do\n\t%0\nend",
  ["while"] = "while %1(exp) do\n\t%0\nend",
  ["repeat"] = "repeat\n\t%0\nuntil %1(exp) end",
  ["do"] = "do\n\t%0\nend",

  -- functions
  ["fnc"] = "%3(--- %4\n-- @function %1\n-- @param %2)\nfunction %1(name)(%2(param))\n\t%0\nend",
  ["fn"] = "function %1(name)(%2(param))\n\t%0\nend",
  ["fna"] = "function(%1(param))\n\t%0\nend",
  ["l"] = "function(%1(param)) return %0 end",

  -- Miscelenious
  ["local"] = "local %1(x) = %2(value)",
  ["--"] = "--[[\n\t%0\n--]]",
  ["---"] = "---[[ %1(name)\n%0\n--]]",
  ["b"] = "%1(describe)(\"%2\", function()\n\t%0\nend)",
  ["r"] = 'require("%1(module)")%0',
  ["c"] = '%1(name)("%2(str)", %3(fna))',

  -- if statement
  ["if"] = "if %1(condition) then\n\t%2\n%3(end)",
  ["ife"] = "if %1(condition) then\n\t%2(--body)\nelse\n\t%0\nend",
  ["else"] = "else\n\t%0\nend",
  ["elseif"] = "elseif %1(condition) then\n\t%2\n%3(end)",
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
