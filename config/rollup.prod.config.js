import { resolve } from 'path';
import buble from 'rollup-plugin-buble';
import uglify from 'rollup-plugin-uglify';
import commonjs from 'rollup-plugin-commonjs';
import replace from 'rollup-plugin-replace';
import strip from 'rollup-plugin-strip';

export default {
  entry: resolve('build/src/rachelle.js'),
  plugins: [
	    strip({ debugger: true }),
		  replace({ 'process.env.NODE_ENV': JSON.stringify(process.env.NODE_ENV) }),
      uglify(),
      buble(),
      commonjs({ include: 'node_modules/**' })
  ],
  targets: [
    {
      dest: resolve('dist/rachelle.min.js'),
      format: 'umd',
      moduleName: 'Rachelle',
      sourceMap: false
    }
  ]
};