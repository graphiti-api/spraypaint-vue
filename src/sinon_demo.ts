export default (condition: boolean, callback: Function): void => {
  if (condition) {
    callback();
  }
};