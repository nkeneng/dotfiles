return {
  {
    "phpactor/phpactor",
	lazy = false,
	ft = 'php',
	run = 'composer install --no-dev --optimize-autoloader',
    config = function()
		vim.keymap.set('n', '<Leader>pm', ':PhpactorContextMenu<CR>')
    	vim.keymap.set('n', '<Leader>pn', ':PhpactorClassNew<CR>')
    	vim.keymap.set('n', '<Leader>gd', ':PhpactorGotoDefinition<CR>')
    end,
  }
}
