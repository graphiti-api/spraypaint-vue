import Vue from 'vue'

const overrideSetter = (object: any, key: any, override: any) => {
  let descriptor = Object.getOwnPropertyDescriptor(object, key)

  if (descriptor) {
    let getter = descriptor.get as any
    let setter = descriptor.set as any
    if (!getter || !setter) return

    Object.defineProperty(object, key, {
      enumerable: true,
      configurable: true,
      get () {
        return getter.call(object)
      },
      set(newVal) {
        override(object[key], newVal)
        setter.call(object, newVal)
      }
    })
  }
}

const cleanupJsormArray = (oldVal: any, newVal: any) => {
  if (oldVal !== newVal) {
    if (Array.isArray(oldVal)) {
      let isJsorm = (oldVal[0] && oldVal[0]['klass']) ||
        (newVal[0] && newVal[0]['klass'])
      if (isJsorm) {
        oldVal.forEach((o: any) => {
          if (newVal.indexOf(o) === -1) {
            o.unlisten()
          }
        })
      }
    }
  }
}

const cleanupJsorm = (oldVal: any, newVal: any) => {
  if (Array.isArray(oldVal)) {
    cleanupJsormArray(oldVal, newVal)
  } else {
    if (oldVal && oldVal['klass']) {
      oldVal.unlisten()
    }
  }
}

export class JSORMVue {
  static install(_Vue: typeof Vue) {
    _Vue.mixin({
      created() {
        Object.keys(this.$data).forEach((k) => {
          overrideSetter(this.$data, k, (oldVal: any, newVal: any) => {
            if (oldVal !== newVal) cleanupJsorm(oldVal, newVal)
          })
        })
      },
      destroyed() {
        Object.keys(this.$data).forEach((k) => {
          let value = this.$data[k]

          if (value) {
            if (Array.isArray(value)) {
              value.forEach((v) => { v.unlisten() })
            } else {
              if (value && value['klass']) value.unlisten()
            }
          }
        })
      }
    })
  }
}