spraypaint-vue
===========

Vue bindings for Spraypaint.

You'll only need this when opting-in to the `sync = true` feature - it ensures instances no longer referenced by the framework still get garbage collected.

### Usage

```ts
const { SpraypaintVue } = require('spraypaint-vue')
Vue.use(SpraypaintVue)
```

That's it! Use `spraypaint` as normal.
