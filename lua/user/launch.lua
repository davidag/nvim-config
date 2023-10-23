-- lua: declare a global empty table with *specs* for the lazy plugin
LAZY_PLUGIN_SPEC = {}

function spec(item)
  -- lua: `table` is a library with generic functions for table manipulation
  -- lua: insert the table `{ import = item }` at the end, creating a table of tables
  table.insert(LAZY_PLUGIN_SPEC, { import = item })
end
