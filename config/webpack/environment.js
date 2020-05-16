const { environment } = require('@rails/webpacker')

environment.plugins.append(
  'Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
  })
)

module.exports = environment

