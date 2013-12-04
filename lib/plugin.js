var stylus = require('stylus');

exports = module.exports = plugin;
exports.path = __dirname;
exports.version = require('../package.json').version;


function plugin() {
  return function(style) {
    style.include(__dirname);
    style.define('data-url', stylus.url({
      limit: 10000 // ~10k
    }));
  };
}