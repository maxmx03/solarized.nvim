vim.api.nvim_create_autocmd('LspTokenUpdate', {
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
    local name = 'SolarizedTodo'

    for _, group_name in pairs(highlights) do
      if text ~= nil and token.type == 'comment' and text:match(group_name) then
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
