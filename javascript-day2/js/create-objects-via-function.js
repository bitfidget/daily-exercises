var cat = function (name, furColor) {
  return {}
  newCat.name = name;
  newCat.furColor = furColor;
  newCat.identity = function () {
    console.log('I am a cat called ' + this.name);
  }
  return newCat;
};

var lizzie = cat('Elizabeth', 'grey');
console.log(lizzie);
var daemon = cat('Daemon', 'black');
console.log(daemon);

lizzie.identity();
daemon.identity();
