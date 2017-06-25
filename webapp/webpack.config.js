var webpack = require('webpack');
var path = require('path');
var glob = require('glob');
var ExtractTextPlugin = require("extract-text-webpack-plugin");
var PurifyCSSPlugin = require('purifycss-webpack');
var CleanWebpackPlugin = require('clean-webpack-plugin')
var inProduction = (process.env.NODE_ENV === "production");

module.exports = {
  entry: {
    app: './client/src/js/app.js',
    // vendor: ['jquery']
  },
  output: {
    path: path.resolve(__dirname, './client/public/js'),
    filename: '[name].[chunkhash].js'
  },
  module: {
    rules: [
      {
        test: /\.s[ac]ss$/,
        use: ExtractTextPlugin.extract({
          fallback: 'style-loader',
          use: ['css-loader', 'sass-loader']
        })
      },
      {
        test: /\.css$/,
        use: ['style-loader', 'css-loader']
      },
      {
        test: /\.vue$/,
        loader: 'vue-loader',
        options: {
          loaders: {

          }
          // other vue-loader options go here
        }
      },
      {
        test: /\.(png|jpg|gif|svg|eot|ttf|woff|woff2)$/,
        loader: 'file-loader',
        options: {
          name: '../images/[name].[hash].[ext]'
        }
      },
      {
        test: /\.js$/,
        exclude: /node_modules/,
        loader: "babel-loader"
      }
    ]
  },
  plugins: [
    new CleanWebpackPlugin(
      ['js', 'css', 'images'],
      {
        root: path.resolve(__dirname, './client/public/'),
        verbose: true,
        dry: false
      }
    ),
    new ExtractTextPlugin('../css/[name].[hash].css'),

    // new PurifyCSSPlugin({
    //   // Give paths to parse for rules. These should be absolute!
    //   // paths: glob.sync(path.join(__dirname, 'client/views/*.html')),
    //   // paths: glob.sync(path.join(__dirname, 'client/src/js/*.vue')),
    //   // paths: glob.sync(path.join(__dirname, 'client/src/js/pages/*.vue')),
    //   minimize: inProduction
    // }),

    new webpack.LoaderOptionsPlugin({
      minimize: inProduction
    }),
    function () {
      this.plugin('done', (status) => {
        require('fs').writeFileSync(
          path.join(__dirname, 'client/public/manifest.json'),
          JSON.stringify(status.toJson().assetsByChunkName)
        );
      });
    }
  ],
  resolve: {
    alias: {
      'vue$': 'vue/dist/vue.esm.js'
    }
  }
};

if (inProduction) {
  module.exports.plugins.push(
    new webpack.optimize.UglifyJsPlugin()
  );

  module.exports.plugins.push(
    new webpack.DefinePlugin({
      'process.env': {
        NODE_ENV: JSON.stringify('production')
      }
    })
  );
}
