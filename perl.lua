--- perl extensions
-- @author [Alejandro Baez](https://twitter.com/a_baez)
-- @coypright 2015
-- @license MIT (see LICENSE)
-- @module perl

local snipping = {
  sub = 'sub %1(name)%2((%3(postprocessors))) {\n\t%0\n}',

  -- random
  ['print'] = 'print "%1\\n";',

  -- conditional
  ['for'] = 'for (%1($i) = %2(0); %1 %3(<) %4(10); %5(%1++)) {\n\t%0\n}',
  ['fore'] = 'foreach %1($_) (%2(@_)) {\n\t%0\n}',
  ['while'] = 'while (%1(expr)) {\n\t%0\n}',
  ['unless'] = 'unless (%1(expr)) {\n\t%0\n}',


  -- if
  ['if'] = 'if (%1(expr)) {\n\t%2\n} %0',
  ['elsif'] = 'elsif (%1(expr)) {\n\t%2\n} %0',
  ['else'] = 'else {\n\t%0\n}',
}

local function connecting()
  --- settings to enable on connect
  buffer.tab_width  = 4
  buffer.use_tabs   = false
end

return {
  connecting = connecting,
  snipping   = snipping
}
