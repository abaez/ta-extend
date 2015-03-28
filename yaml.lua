--- yaml extensions
-- @author [Alejandro Baez](https://twitter.com/a_baez)
-- @coypright 2015
-- @license MIT (see LICENSE)
-- @module yaml

local snippets = {
  ["-"]     = "- name: %1(description)\n\t%2(module): %0",
  ["---"]   = "---\n- name: %0",
  ["f"]     = "\t%1(param)=%0",
  ["n"]     = "%1(param)=%0",
  ["wi"]     = "with_items:\n\t- %1\n\t- %0",
}

return {
  snippets = snippets
}
