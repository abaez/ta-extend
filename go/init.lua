--- extends go.
-- @author [Alejandro Baez](https://twitter.com/a_baez)
-- @coypright 2015
-- @license MIT (see LICENSE)
-- @module go

local snippets = {
  const = 'const %1(name) %2(type)  = %3(value)',

  -- functions
  fn = 'func %1(name)(%2(arguments))%3( (%4(results))) {\n\t%0\n}',
  fna = 'func(%1(arguments))%2( (%3(results))) {\n\t%0\n}',
  fnp = 'func (%1(*T)) %2(name)(%3(arguments))%4( (%5(results))) {\n\t%0\n}',

  imp = 'import %1((\n\t"%2(package)"%0\n))',
  pkg = 'package %1(main)',
  var = 'var %1(name) %2(type) %3( = %4(value))',

  -- type calls
  ["type"] = 'type %1(Name) %2(struct) {\n\t%0\n}',

  -- conditionals
  ["for"] = "for %1(name) := %2(0); %1 %3(<) %4(10); %1%5(++) {\n\t%0\n}",
  ["forw"] = "for %1(name) %2(<) %3(condition) {\n\t%0\n}",
  ["forr"] = "for %1(name), %2(tmp) := range %4(s_m) {\n\t%0\n}",

  -- if block
  ["if"] = "if %1(statement) {\n\t%2\n}%0",
  ["ife"] = "if %1(statement) {\n\t%2(body)\n} else %3({\n\t%0\n})",
  ["else"] = "else {\n\t%0\n}",
  ["switch"] = "switch %1(statement) {\n%2\ndefault:\n\t%0\n}",
  ["case"] = "case %1(name):\n\t%2(block)\n%0",

  -- random
  ['select'] = "select {\n\t%0\n}",
}

if type(snippets) == 'table' then
  snippets.go = snippets
end

return {
  snippets = snippets
}
