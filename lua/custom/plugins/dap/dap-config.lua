local ok, dap = pcall(require, "dap")
if not ok then
  vim.notify "Could not load dap"
  return
end


dap.adapters.cppdbg = {
  id = 'cppdbg',
  type = 'executable',
  command = 'home/zxx/dap/extension/debugAdapters/bin/OpenDebugAD7',
}

dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "cppdbg",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = true,
  },
  -- {
  --   name = 'Attach to gdbserver :1234',
  --   type = 'cppdbg',
  --   request = 'launch',
  --   MIMode = 'gdb',
  --   miDebuggerServerAddress = 'localhost:1234',
  --   miDebuggerPath = '/usr/bin/gdb',
  --   cwd = '${workspaceFolder}',
  --   program = function()
  --     return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
  --   end,
  -- },
}

vim.fn.sign_define("DapBreakpoint", { text = "🛑", texthl = "DiagnosticError" })  -- 
vim.fn.sign_define("DapLogPoint", { text = "", texthl = "DiagnosticInfo" })
vim.fn.sign_define("DapStopped", { text = "⭐️", texthl = "Constant" })  -- 
vim.fn.sign_define("DapBreakpointRejected", { text = "" })  -- 

dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp


