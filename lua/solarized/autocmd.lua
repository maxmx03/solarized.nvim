local M = {}

function M.load_autocmd()
  local group = vim.api.nvim_create_augroup('solarized', { clear = true })

  vim.api.nvim_create_autocmd('ColorSchemePre', {
    group = group,
    callback = function()
      vim.api.nvim_del_augroup_by_id(group)
    end,
  })

  vim.api.nvim_create_autocmd('LspTokenUpdate', {
    group = group,
    callback = function(args)
      local token = args.data.token
      local buffer = args.buf
      local text = vim.api.nvim_buf_get_text(
        buffer,
        token.line,
        token.start_col,
        token.line,
        token.end_col,
        {}
      )[1]

      local highlights = {
        'TODO',
        'WARN',
        'TEST',
        'PERF',
        'NOTE',
        'HACK',
        'FIX',
      }
      local name = 'SolarizedToken'

      for _, group_name in pairs(highlights) do
        if
          text ~= nil
          and token.type == 'comment'
          and text:match(group_name)
        then
          vim.lsp.semantic_tokens.highlight_token(
            token,
            buffer,
            args.data.client_id,
            name .. group_name
          )
        end
      end
    end,
  })
end

function M.load_autocmd_highlights(c)
  local set_hl = require('solarized.utils').set_hl

  set_hl('SolarizedTokenTODO', { fg = c.info })
  set_hl('SolarizedTokenWARN', { fg = c.warning })
  set_hl('SolarizedTokenTEST', { fg = c.violet })
  set_hl('SolarizedTokenPERF', { fg = c.magenta })
  set_hl('SolarizedTokenNOTE', { fg = c.hint })
  set_hl('SolarizedTokenHACK', { fg = c.cyan })
  set_hl('SolarizedTokenFIX', { fg = c.error })
end

return M
