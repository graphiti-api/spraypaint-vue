export default {
   // 'a' should not be covered
  a: (): boolean => {
    const uncovered: boolean = true;
    return uncovered;
  },
  b: (): boolean => true
};