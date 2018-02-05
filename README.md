jsorm-vue
===========

Vue bindings for JSORM.

You'll only need this when opting-in to the `sync = true` feature - it ensures instances no longer referenced by the framework still get garbage collected.

### Usage

```ts
const { JSORMVue } = require('jsorm-vue')
Vue.use(JSORMVue)
```

That's it! Use `jsorm` as normal.
