# ta-extend
## extensions for textadept languages by [Alejandro Baez][1]

### DESCRIPTION
After using [Textadept][2] for a while, you tend to build your own extensions
to languages, [among][3] [other][4] [things][5].
The normal form of extending languages in textadept is usually making a
**post_init.lua** file in a [language modules][6]. However, the procedure
can become quite a large set of language modules. Instead, this module
allows you to extend textadept languages without making a whole new module
in the process.

### INSTALL
Clone the *ta-extend* repository to your textadept's **_USERHOME/modules**:

```
cd ~/.textadept/modules
hg clone https://bitbucket.org/a_baez/ta-extend extend
```
Add to your **_USERHOME/init.lua** file the module:

```
require("extend")
```

You are done!

### USAGE
If you want to add your own language extension, simply look at the source of
one of the languages with this module added to know what to add.

You do need to name the file, for the language you chose, the same as the lexer
name of the language in textadept. So something like `coffeescript.lua` for
coffeescript would suffice.

You also need to have the following methods in your language extension for the
module to work:

```
--- language specific buffer changes.
local function connecting()
end

--- snippets to add
local function snipping()
end
```

[1]: https://twitter.com/a_baez
[2]: http://foicica.com/textadept/
[3]: https://bitbucket.org/a_baez/ta-common
[4]: https://bitbucket.org/a_baez/ta-rust
[5]: https://bitbucket.org/a_baez/ta-moonscript
[6]: http://foicica.com/textadept/manual.html#Modules
