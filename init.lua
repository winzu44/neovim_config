require('options')
require('keymaps')
require('lsp')
-- require('initlsp')
-- lazy loads all of lua files under lua/plugins
require('config.lazy')


require('colorscheme')

require('vim._core.ui2').enable()
