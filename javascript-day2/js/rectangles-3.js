
var Rectangle = function (length, width) {
  this.length = length,
  this.width = width,
};

Rectangle.prototype.isSquare: function(){
  return this.length === this.width;
},
Rectangle.prototype.area: function(){
  return this.length * this.width;
},
Rectangle.prototype.perimeter: function(){
  return 2 * (this.length + this.width);
};

var rectangle = new Rectangle(4,6);
var square = new Rectangle(5,5);


console.log(rectangle.isSquare());
console.log(rectangle.area());
console.log(rectangle.perimeter());

//circle work!






