/**
 * rachelle
 * @version 0.0.9
 * @copyright (c) 2016 KFlash
 * @license MIT <undefined/blob/master/LICENSE>
 */
exports.default = {
    // 'a' should not be covered
    a: function () {
        var uncovered = true;
        return uncovered;
    },
    b: function () { return true; }
};