--- yaml extensions
-- @author [Alejandro Baez](https://twitter.com/a_baez)
-- @coypright 2015
-- @license MIT (see LICENSE)
-- @module yaml

local snippets_list = {
  ["-"]     = "- name: %1(description)\n\t%2(module): %0",
  ["---"]   = "---\n- name: %0",
  ["f"]     = "\t%1(param)=%0",
  ["i"]     = "%1(param)=%0",

  -- loops
  ["wi"]     = "with_items:\n\t- %1\n\t- %0",
  ["wn"]     = "with_nested:\n\t%0",
  ["ws"]     = "with_sequence: %0",

  -- if
  ['if']    = "when: %1(cond)",
}

if type(snippets) == 'table' then
  snippets.yaml = snippets_list
end

return {}
