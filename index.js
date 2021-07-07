module.exports = {
  onPreBuild: ({ utils }) => {
    utils.build.cancelBuild('The build was cancelled by the plugin')
  },
}
