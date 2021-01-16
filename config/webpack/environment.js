const { environment } = require('@rails/webpacker')

// jQueryを直接使用するための記述
const webpack = require('webpack')
environment.plugins.append('Provide', new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery'
}))

module.exports = environment
