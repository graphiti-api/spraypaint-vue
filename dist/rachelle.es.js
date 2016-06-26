/**
 * rachelle
 * @version 0.1.0
 * @copyright (c) 2016 KFlash
 * @license MIT <undefined/blob/master/LICENSE>
 */
var rachelle = {
    // 'a' should not be covered
    a: function () {
        var uncovered = true;
        return uncovered;
    },
    b: function () { return true; }
};

export default rachelle;