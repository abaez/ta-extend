--- ansi_c extensions
-- @author [Alejandro Baez](https://twitter.com/a_baez)
-- @coypright 2015
-- @license MIT (see LICENSE)
-- @module ansi_c

snippet_list = {
  -- functions and structs
  fn = '%1(T) %2(name)(%3(arguments))%4(;)',
  struct = "struct %1(name) %2(;)",
  enum = "enum %1(name) %2(;)",
  ["type"] = "typedef %1(type) %2(alias);%0",

  -- random
  ['in'] = '#include %1(<%2(name)>)%0',
  ['printf'] = 'printf("%1", %2(param))',
  ['/*'] = "/*\n * %0\n */",
  ["malloc"] = "(%1(T) *)malloc(sizeof(%1));%0",
  ['def'] = '#ifndef %1(name)\n#define %1\n%0\n#endif // %1',
  ['{'] = "{\n\t%0\n",

  -- conditional
  ['for'] = 'for (%1(i) = %2(0); %1 %3(<) %4(10); %5(%1++)) {\n\t%0\n}',
  ['while'] = 'while (%1(expr)) {\n\t%0\n}',
  ['do'] = 'do {\n\t%1\n} while (%2); %0',

  -- if
  ['if'] = 'if (%1(expr)) {\n\t%2\n} %0',
  ['else'] = 'else {\n\t%0\n}',
  ['switch'] = 'switch (%1(expr)) {\n%1\ndefault:\n\t%0\n}',
  ['case'] = 'case %1(expr):\n\t%2\n%0',
}

local function connecting()
  --- settings to enable on connect
  buffer.tab_width  = 2
  buffer.use_tabs   = false
end

local function snipping()
  snippets.ansi_c = snippet_list
end

return {
  connecting = connecting,
  snipping   = snipping
}
