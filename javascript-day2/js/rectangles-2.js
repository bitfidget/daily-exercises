
var rectangle = {
  length: 5,
  width: 5,
  isSquare: function(){
    return this.length === this.width;
  },
  area: function(){
    return this.length * this.width;
  },
  perimeter: function(){
    return 2 * (this.length + this.width);
  }
};

console.log(rectangle.isSquare());
console.log(rectangle.area());
console.log(rectangle.perimeter());

//circle work!






