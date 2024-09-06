const path = require("path");
const webpack = require("webpack");

console.log(process.env.CI);
console.log(process.env.CI_COMMIT_BRANCH);

module.exports = {
  mode: "production",
  devtool: "source-map",
  entry: {
    application: "./app/javascript/application.js",
  },
  output: {
    filename: "[name].js",
    sourceMapFilename: "[file].map",
    chunkFormat: "module",
    path: path.resolve(__dirname, "app/assets/builds"),
  },
  plugins: [
    new webpack.optimize.LimitChunkCountPlugin({
      maxChunks: 1,
    }),
  ],
  ...(true && { cache: { type: "filesystem" } }),
};
