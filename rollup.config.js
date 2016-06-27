import { resolve } from 'path';
import buble from 'rollup-plugin-buble';
import uglify from 'rollup-plugin-uglify';
import commonjs from 'rollup-plugin-commonjs';
import replace from 'rollup-plugin-replace';
const pkg = require('./package.json');
const isProduction = process.env.NODE_ENV === 'production';

export default {
  entry: resolve(`build/src/${pkg.name}.js`),
   banner: 
	'/**\n' +
	' * ' + pkg.name + '\n' +
	' * @version ' + pkg.version + '\n' +
	' * @copyright (c) 2016 ' + pkg.author + '\n' +
	' * @license MIT <'+ pkg.homepage + '/blob/master/LICENSE>\n' +
	' */',
  plugins: [
		  replace({ 'process.env.NODE_ENV': JSON.stringify(process.env.NODE_ENV) }),
      isProduction ? uglify({}) : {
        warnings: false,
				compress: {
					screw_ie8: true,
					dead_code: true,
					unused: true,
					drop_debugger: true
				}
      },
      buble(),
      commonjs({ include: 'node_modules/**' })
  ],
  targets: [
    {
      dest: resolve(`dist/${pkg.name}.${isProduction ? 'min.js' : 'js'}`),
      format: 'umd',
      moduleName: pkg.name,
      sourceMap: false
    }
  ]
};

 