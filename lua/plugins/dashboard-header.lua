-- Show the Omarchy branding art on the dashboard instead of the LazyVim logo.
-- The art is read from the same file Omarchy renders as its screensaver, so
-- changing the branding there changes the editor start screen too.
-- Falls back to LazyVim's header when the file is missing or empty.
local branding_file = vim.fn.expand("~/.config/omarchy/branding/screensaver.txt")

return {
  "folke/snacks.nvim",
  opts = function(_, opts)
    local ok, lines = pcall(vim.fn.readfile, branding_file)
    if not ok or not lines or #lines == 0 then
      return
    end

    -- Trailing blank lines would add dead space under the art.
    while #lines > 0 and lines[#lines]:match("^%s*$") do
      table.remove(lines)
    end

    -- snacks shifts every line wider than the dashboard column on its own, so
    -- lines of different width would drift apart. Padding them all to the same
    -- width keeps the art's internal alignment, which is what makes it readable.
    local width = 0
    for _, line in ipairs(lines) do
      width = math.max(width, vim.fn.strdisplaywidth(line))
    end
    for i, line in ipairs(lines) do
      lines[i] = line .. (" "):rep(width - vim.fn.strdisplaywidth(line))
    end

    opts.dashboard = opts.dashboard or {}
    opts.dashboard.preset = opts.dashboard.preset or {}
    opts.dashboard.preset.header = table.concat(lines, "\n")
  end,
}
