local function compile_and_copy()
  local file = vim.fn.expand("%:t")
  local ext = vim.fn.expand("%:e")
  local dir = vim.fn.expand("%:p:h")
  local name = vim.fn.expand("%:t:r")
  local cmd = ""

  -- add your language
  if ext == "c" then
    cmd = string.format('cd "%s" && gcc %s -o %s && "%s/%s"', dir, file, name, dir, name)
  elseif ext == "cpp" then
    cmd = string.format('cd "%s" && g++ %s -o %s && "%s/%s"', dir, file, name, dir, name)
  elseif ext == "py" then
    cmd = string.format('cd "%s" && python %s', dir, file)
  elseif ext == "java" then
    cmd = string.format('cd "%s" && javac %s && java %s', dir, file, name)
  else
    print("Unsupported file type")
    return
  end

  vim.fn.setreg("+", cmd)
  print("Compile command copied to clipboard")
end

-- Create a command to call the function
vim.api.nvim_create_user_command("CompileAndCopy", compile_and_copy, {})

-- Optional: Add a keybinding (e.g., <leader>cg)
vim.api.nvim_set_keymap("n", "<leader>cg", ":CompileAndCopy<CR>", { noremap = true, silent = true })

return compile_and_copy
