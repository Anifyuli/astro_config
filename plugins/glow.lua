return {
  "ellisonleao/glow.nvim",
  enable = true,
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
