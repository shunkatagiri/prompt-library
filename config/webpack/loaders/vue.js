const { VueLoaderPlugin } = require('vue-loader')
const vue = {
  test: /\.vue$/,
  use: [{
    loader: 'vue-loader'
  }]
}

module.exports = {
  module: {
    rules: [vue],
  },
  plugins: [
    // make sure to include the plugin!
    new VueLoaderPlugin()
  ],
}
