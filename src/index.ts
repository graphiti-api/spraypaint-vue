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

const cleanupSpraypaintArray = (oldVal: any, newVal: any) => {
  if (oldVal !== newVal) {
    if (Array.isArray(oldVal)) {
      let isSpraypaint = (oldVal[0] && oldVal[0]['klass']) ||
        (newVal[0] && newVal[0]['klass'])
      if (isSpraypaint) {
        oldVal.forEach((o: any) => {
          if (newVal.indexOf(o) === -1) {
            o.unlisten()
          }
        })
      }
    }
  }
}

const cleanupSpraypaint = (oldVal: any, newVal: any) => {
  if (Array.isArray(oldVal)) {
    cleanupSpraypaintArray(oldVal, newVal)
  } else {
    if (oldVal && oldVal['klass']) {
      oldVal.unlisten()
    }
  }
}

export class SpraypaintVue {
  static install(_Vue: typeof Vue) {
    _Vue.mixin({
      created() {
        Object.keys(this.$data).forEach((k) => {
          overrideSetter(this.$data, k, (oldVal: any, newVal: any) => {
            if (oldVal !== newVal) cleanupSpraypaint(oldVal, newVal)
          })
        })
      },
      destroyed() {
        Object.keys(this.$data).forEach((k) => {
          let value = this.$data[k]

          if (value) {
            if (Array.isArray(value)) {
              value.forEach((v) => {
                if (v['klass']) v.unlisten()
              })
            } else {
              if (value && value['klass']) value.unlisten()
            }
          }
        })
      }
    })
  }
}
