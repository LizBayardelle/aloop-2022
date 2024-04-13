const esbuild = require('esbuild')
const rails = require('esbuild-rails')

esbuild.build({
  entryPoints: ['application.js'],
  bundle: true,
  outdir: 'app/assets/builds',
  plugins: [rails()],
  watch: process.argv.includes('--watch'),
}).catch(() => process.exit(1))
