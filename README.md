# ta-extra
## Extra for textadept languages by [Alejandro Baez][1]

### DESCRIPTION
After using [Textadept][2] for a while, you tend to build your own extensions
to languages, [among][3] [other][4] [things][5].
The normal form of extending languages in textadept is usually making a
**extra.lua** file in a [language modules][6]. However, the procedure
can become quite a large set of language modules if you are a polylinguist.
Instead, this module allows you to extend textadept languages without making a
whole new module in the process.

### INSTALL
Clone the *ta-extra* repository to your textadept's **_USERHOME/modules**:

```
cd ~/.textadept/modules
hg clone https://bitbucket.org/a_baez/ta-extra extra
```
Add to your **_USERHOME/init.lua** file the module:

```
require("extra")
```

You are done!

### USAGE
To add a new language, you need to do two things. First is name the module the
same as the language you want to have extra snippets or changes. So if you want
*moonscript*, you would need a **moonscript.lua** file for the language.
Second, make sure you have a
`connecting` function for language specific buffer changes and a `snipping`
table:

```
-- (some lang).lua

--- language specific buffer changes.
local function connecting()
end

--- snippets to add
local snipping = {
  true,

  "key" = "snippet"
}

return {
  snipping = snipping,
  connecting = connecting
}
```

> *NOTE*: `snipping` has a **true** field as the first element.
This is to make sure that the snippet isn't reloaded each time the lexer
is loaded. Thus keeping the speed up of your lovely texteditor.

The `connecting` method and `snipping` table are optional. Meaning if you want
to only do buffer changes, you only need a `connecting` method for your module.
The same can be said for `snipping`, when you only want snippets to be added.

### LICENSE
Copyright (c) 2015-2016 [Alejandro Baez][1]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to
deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
sell copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
IN THE SOFTWARE.

[1]: https://twitter.com/a_baez
[2]: http://foicica.com/textadept/
[3]: https://bitbucket.org/a_baez/ta-common
[4]: https://bitbucket.org/a_baez/ta-rust
[5]: https://bitbucket.org/a_baez/ta-moonscript
[6]: http://foicica.com/textadept/manual.html#Modules
