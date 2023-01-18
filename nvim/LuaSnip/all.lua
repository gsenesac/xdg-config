
-- see :help luasnip-textnode
--      :help luasnip-insertnode

local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

return {
  -- A snippet that expands the trigger "hi" into the string "Hello, world!".
  require("luasnip").snippet(
    { trig = "hi" },
    { t("Hello, world!") }
  ),

  -- To return multiple snippets, use one `return` statement per snippet file
  -- and return a table of Lua snippets.
  require("luasnip").snippet(
    { trig = "foo" },
    { t("Another snippet.") }
  ),

  -- Example single line
  --s({trig="debug", dscr="Expands 'debug' into stuff"},
  ---- Example: using fmt's `delimiters` key to manually specify angle brackets
  --fmt(
  --"import code; code.inspect( {}, {} )",
  --{
  --    i(1),
  --    i(2)
  --})
  --),
  --
  -- Example multiple line ([[ is a block format)
  s({trig="eq", dscr="Expands 'eq' into an equation environment"},
  fmt(
  [[
  import code
  code.interact( local=locals() )
  {}
  ]],
  { i(1) }
  )
  ),

  -- Example with repeated node
  s({trig="hg", dscr="Expands 'hg' into a C-style header guard"},
  fmt(
  [[
  #ifndef {}
  #define {}

  #endif // {}
  ]],
  { i(1),
    rep(1),
    rep(1)
  }
)
)
}

