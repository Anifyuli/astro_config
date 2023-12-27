return {
  "ellisonleao/glow.nvim",
  enabled = true,
  priority = 1000,
  lazy = false,
  pin = true,
  config = true,
  cmd = "Glow",
  opts = {
    require('glow').setup({
      border = "rounded"
    })
  }
}
