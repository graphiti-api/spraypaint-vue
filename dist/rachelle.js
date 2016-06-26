/**
 * rachelle
 * @version 0.0.8
 * @copyright (c) 2016 KFlash
 * @license MIT <undefined/blob/master/LICENSE>
 */
(function (global, factory) {
    typeof exports === 'object' && typeof module !== 'undefined' ? factory() :
    typeof define === 'function' && define.amd ? define(factory) :
    (factory());
}(this, function () {

    exports.default = {
        // 'a' should not be covered
        a: function () {
            var uncovered = true;
            return uncovered;
        },
        b: function () { return true; }
    };

}));