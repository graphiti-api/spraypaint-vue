import { resolve } from 'path';
import buble from 'rollup-plugin-buble';
import commonjs from 'rollup-plugin-commonjs';
import replace from 'rollup-plugin-replace';
const pkg = require('../package.json');

export default {
  entry: resolve('build/src/rachelle.js'),
  useStrict: false,
  banner:
	'/**\n' +
	' * ' + pkg.name + '\n' +
	' * @version ' + pkg.version + '\n' +
	' * @copyright (c) 2016 ' + pkg.author + '\n' +
	' * @license MIT <'+ pkg.homepage + '/blob/master/LICENSE>\n' +
	' */',
  plugins: [
      replace({ 'process.env.NODE_ENV': JSON.stringify(process.env.NODE_ENV) }),
      buble(),
      commonjs({ include: 'node_modules/**' }),
  ],
  targets: [
    {
      dest: resolve('dist/rachelle.js'),
      format: 'umd',
      moduleName: 'Rachelle',
      sourceMap: false
    },
    {
      dest: resolve('dist/rachelle.es.js'),
      format: 'es',
      sourceMap: false
    },
    {
      dest: resolve('dist/rachelle.mjs'),
      format: 'es',
      sourceMap: false
    }
  ]
};