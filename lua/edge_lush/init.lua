local lush = require("lush")
local base = require("edge_lush.base")
local plugins = require("edge_lush.plugins")

return lush.merge({
  base,
  plugins,
})
